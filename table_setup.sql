CREATE DATABASE CRYSTN_EXPTS;

USE CRYSTN_EXPTS;

CREATE TABLE MOLECULES
(MOL_ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
 SMILES VARCHAR(200),
 CAS_NO VARCHAR(20),
 MOL_NAME VARCHAR(50) NOT NULL,
 RMM FLOAT(4)
);

CREATE TABLE PXRD_EXPTS
(PXRD_ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
 FILENAME VARCHAR(50),
 INSTRUMENT_ID INTEGER,			# make FK
 START_ANGLE INTEGER,
 END_ANGLE INTEGER,
 COLLECTION_TIME INTEGER
);

CREATE TABLE PXRD_INSTRUMENTS
(INSTRUMENT_ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
 I_NAME VARCHAR(30),
 RADIATION VARCHAR(20) NOT NULL
);

CREATE TABLE RESEARCHERS
(RESEARCHER_ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
 R_FIRSTNAME VARCHAR(20),
 R_SECONDNAME VARCHAR(20),
 R_STATUS VARCHAR(20)
);

CREATE TABLE SAFETY
(MOL_ID INTEGER NOT NULL,
 HZD_ID INTEGER NOT NULL,
 CONSTRAINT
 FK_MOL_ID FOREIGN KEY (MOL_ID) 
 REFERENCES MOLECULES(MOL_ID) 
);

CREATE TABLE HAZARDS
(HZD_ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
 HZD_CODE VARCHAR(20) NOT NULL,
 HZD_STATEMENT VARCHAR(100)
);

CREATE TABLE EXPERIMENTS
(EXPT_ID INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
 RESEARCHER_ID INTEGER NOT NULL,	# FK RESEARCHERS.RESEARCHER_ID
 EXPT_DATE DATE DEFAULT (current_date()),
 CF1_MOL_ID INTEGER NOT NULL,		# FK either MOLECULES.MOL_ID or COFORMERS.MOL_ID
 CF2_MOL_ID INTEGER,				# FK either MOLECULES.MOL_ID or COFORMERS.MOL_ID
 SOLVENT_MOL_ID INTEGER,			# FK either MOLECULES.MOL_ID or SOLVENTS.MOL_ID
 STOICHIOMETRY VARCHAR(10),
 TEMPERATURE DECIMAL(6, 2) NOT NULL DEFAULT 293.15,
 SUCCESS BOOLEAN,
 PXRD_ID INTEGER DEFAULT 1,					# FK PXRD_EXPTS.PXRD_ID
 NOTES TEXT
);

# ADDITIONAL FK CONSTRAINTS

ALTER TABLE SAFETY
ADD CONSTRAINT FK_hazard FOREIGN KEY (HZD_ID) REFERENCES HAZARDS(HZD_ID);

ALTER TABLE PXRD_EXPTS
ADD CONSTRAINT FK_Instr_ID FOREIGN KEY (INSTRUMENT_ID) REFERENCES PXRD_INSTRUMENTS (INSTRUMENT_ID);#

ALTER TABLE EXPERIMENTS
ADD CONSTRAINT FK_CF1_MOL FOREIGN KEY (CF1_MOL_ID) REFERENCES MOLECULES(MOL_ID),
ADD CONSTRAINT FK_CF2_MOL FOREIGN KEY (CF2_MOL_ID) REFERENCES MOLECULES(MOL_ID),
ADD CONSTRAINT FK_SOLV_MOL FOREIGN KEY (SOLVENT_MOL_ID) REFERENCES MOLECULES(MOL_ID),
ADD CONSTRAINT FK_PXRD FOREIGN KEY (PXRD_ID) REFERENCES PXRD_EXPTS(PXRD_ID),
ADD CONSTRAINT FK_RESEARCHER_ID FOREIGN KEY (RESEARCHER_ID) REFERENCES RESEARCHERS(RESEARCHER_ID);

#DROP DATABASE CRYSTN_EXPTS;

