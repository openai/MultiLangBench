CREATE TABLE flock_owner(
  owner_rec_id INTEGER CONSTRAINT flock_owner_key PRIMARY KEY,
  flock_no VARCHAR(6) NOT NULL REFERENCES flock (flock_no),
  owner_person_id INTEGER NOT NULL REFERENCES person (person_id),
  owner_change_date TEXT, last_changed TEXT NOT NULL,
  CONSTRAINT fo_owner_date UNIQUE (flock_no, owner_change_date)
);
CREATE TABLE sheep (
  Sheep_No char(7) NOT NULL,
  Date_of_Birth char(8),
  Sort_DoB text,
  Flock_Book_Vol char(2),
  Breeder_No char(6),
  Breeder_Person integer,
  Originating_Flock char(6),
  Registering_Flock char(6),
  Tag_Prefix char(9),
  Tag_No char(15),
  Sort_Tag_No integer,
  Breeders_Temp_Tag char(15),
  Sex char(1),
  Sheep_Name char(32),
  Sire_No char(7),
  Dam_No char(7),
  Register_Code char(1),
  Colour char(48),
  Colour_Code char(2),
  Pattern_Code char(8),
  Horns char(1),
  Litter_Size char(1),
  Coeff_of_Inbreeding real,
  Date_of_Registration text,
  Date_Last_Changed text,
  UNIQUE(Sheep_No)
);
CREATE INDEX fo_flock_no_index ON flock_owner (flock_no);
CREATE INDEX fo_owner_change_date_index ON flock_owner (owner_change_date);
CREATE INDEX fo_owner_person_id_index ON flock_owner (owner_person_id);
CREATE INDEX sheep_org_flock_index ON sheep (originating_flock);
CREATE INDEX sheep_reg_flock_index ON sheep (registering_flock);