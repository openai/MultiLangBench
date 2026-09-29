#!/usr/bin/env python3
"""Offline integration smoke test for tools/site. Uses only temporary copies."""
import os,sys,tempfile,shutil,subprocess,json,tarfile,pathlib
SRC=pathlib.Path(__file__).resolve().parents[1]
top=tempfile.mkdtemp(prefix='site-smoke-');
import atexit; atexit.register(lambda: shutil.rmtree(top,ignore_errors=True))
def die(s): raise AssertionError(s)
def archive(path,layout,bad=False):
 d=pathlib.Path(tempfile.mkdtemp(dir=top)); base=d/('paper-commit' if layout=='dir' else ''); base.mkdir(parents=True,exist_ok=True)
 (base/('README' if bad else 'theme.toml')).write_text('bad' if bad else 'name="PaperMod"\n')
 with tarfile.open(path,'w:gz') as t:
  for x in d.iterdir(): t.add(x,arcname=x.name)
 shutil.rmtree(d)
rootarc=f'{top}/root.tgz'; dirarc=f'{top}/dir.tgz'; badarc=f'{top}/bad.tgz'
archive(rootarc,'root'); archive(dirarc,'dir'); archive(badarc,'dir',True)
# fake tool one script dispatch on argv0, JSON vector log
fakecode='''#!/usr/bin/env python3
import os,sys,json,shutil,pathlib
tool=os.path.basename(sys.argv[0]); log=os.environ['FAKELOG']
with open(log,'a') as f: f.write(json.dumps([tool]+sys.argv[1:])+"\\n")
args=sys.argv[1:]
if tool=='git': sys.exit(1)
if tool in ('curl','wget'):
 if tool=='curl' and os.environ.get('CURLFAIL')=='1': sys.exit(2)
 out=args[args.index('-o')+1] if '-o' in args else args[args.index('-O')+1]
 shutil.copyfile(os.environ['ARCHIVE'],out); sys.exit(0)
if tool=='hugo':
 if args and args[0]=='version': print(os.environ.get('HV','hugo v0.160.0+extended linux')); sys.exit(0)
 # refuse builds/serve without validated theme
 if not pathlib.Path('themes/PaperMod/theme.toml').exists(): sys.exit(9)
 if not args or args[0] != 'server':
  pathlib.Path('public').mkdir(exist_ok=True); pathlib.Path('public/index.html').write_text('ok')
 sys.exit(0)
sys.exit(0)
'''
def ws(name, hv='hugo v0.160.0+extended linux', arc=dirarc, curlfail=False, theme=False):
 w=pathlib.Path(top)/name
 shutil.copytree(SRC,w,ignore=shutil.ignore_patterns('.git','public','themes'))
 # retain empty themes
 (w/'themes').mkdir(exist_ok=True)
 if theme:
  (w/'themes/PaperMod').mkdir(); (w/'themes/PaperMod/theme.toml').write_text('name="x"')
 bin=w/'fake'; bin.mkdir(); script=bin/'tool'; script.write_text(fakecode); script.chmod(0o755)
 for n in ['hugo','git','aws','curl','wget']: (bin/n).symlink_to('tool')
 env=os.environ.copy(); env.update(PATH=str(bin)+':'+env['PATH'],HUGO=str(bin/'hugo'),AWS=str(bin/'aws'),FAKELOG=str(w/'log'),ARCHIVE=arc,HV=hv,CURLFAIL='1' if curlfail else '0')
 return w,env
def run(w,e,args,cwd=None):
 p=subprocess.run(args,cwd=cwd or w,env=e,stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
 log=[]
 lf=w/'log'
 if lf.exists(): log=[json.loads(x) for x in lf.read_text().splitlines()]
 return p.returncode,log
def clear(w): (w/'log').write_text('')
def tools(log,n): return [x for x in log if x[0]==n]
def ok(c,s):
 if not c: die(s)
