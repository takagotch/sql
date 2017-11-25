CREATE TABLE Addresslist
(
  registration_number INTEGER      NOT NULL,
  name                VARCHAR(128) NOT NULL,
  address             VARCHAR(256) NOT NULL,
  tel_namber          CHAR(10)     ,
  mail_address        CHAR(20)     ,
  PRIMARY KEY (registration_number) );

ALTER TABLE Addresslist ADD COLUMN address_namber CHAR(8) NOT NULL;
DROP TABLE Addresslist;



