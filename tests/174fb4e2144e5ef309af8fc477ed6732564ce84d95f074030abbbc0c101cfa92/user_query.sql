CREATE INDEX f_i ON folders(foldername);
CREATE TABLE result AS SELECT count(*) AS n FROM folders WHERE foldername < 'FolderC' COLLATE nocase;