INSERT INTO HAZARDS
(HZD_CODE, HZD_STATEMENT)
VALUES
('H315', 'Causes skin irritation'),
('H319', 'Causes serious eye irritation'),
('H335', 'May cause respiratory irritation'),
('H225', 'Highly flammable liquid and vapor'),
('H301 + H311 + H331', 'Toxic if swallowed, in contact with skin or if inhaled'),
('H370', 'Causes damage to organs (Eyes, Central nervous system)'),
('H336', 'May cause drowsiness or dizziness'),
('H351', 'Suspected of causing cancer'),
('H317', 'May cause an allergic skin reaction'),
('H301 + H311', 'Toxic if swallowed or in contact with skin'),
('H301', 'Toxic if swallowed'),
('X', 'Non-hazardous'),
('H302', 'Harmful if swallowed'),
('H318', 'Causes serious eye damage'),
('H312', 'Harmful in contact with skin'),
('H332', 'Harmful if inhaled');



INSERT INTO MOLECULES
(SMILES, CAS_NO, MOL_NAME, RMM)
VALUES
('IC1=CC=C(I)C=C1', '624-38-4', "1,4-diiodobenzene", 329.91),
('IC1=CC(I)=CC=C1', '626-00-6', "1,3-diiodobenzene", 329.91),
('CO', '67-56-1', "methanol", 32.04),
('ClCCl', '75-09-2', "dichloromethane", 84.93),
('Oc1cc(O)cc(O)c1', '108-73-6', "phloroglucinol", 126.11),
('c1cnc(nc1)-c2ncccn2', '34671-83-5', "2,2'-bipyrimidine", 158.16),
('c1ccc2nc3ccccc3nc2c1', '92-82-0', "phenazine", 180.21),
('c1cc(ccn1)-c2ccncc2', '553-26-4', "4,4'-bipyridyl", 156.18),
('c1ccc(nc1)-c2ccccn2', '366-18-7', "2,2'-bipyridyl", 156.18),
('c1ccc2[nH]cnc2c1', '51-17-2', "benzimidazole", 118.14),
('CCO', '64-17-5', "ethanol", 46.07),
('Ic1ccc(cc1)-c2cc(cc(c2)-c3ccc(I)cc3)-c4ccc(I)cc4', '151417-38-8', "1,3,5-tris(4-iodophenyl)benzene", 684.09),
('IC1=CC(I)=CC(I)=C1', '626-44-8', "1,3,5-triiodobenzene", 455.80),
('C1CCOC1', '109-99-9', "tetrahydrofuran", 72.11);


INSERT INTO SAFETY
(MOL_ID, HZD_ID)
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),		# check this one
(2, 2),
(2, 3),
(3, 4),
(3, 5),
(3, 6),
(4, 1),
(4, 2),
(4, 7),
(4, 8),
(5, 1),
(5, 2),
(5, 3),
(5, 9),
(6, 1),
(6, 2),
(6, 3),
(7, 12),
(8, 11),
(9, 10),
(10, 13),
(11, 4),
(11, 2),
(12, 14),
(13, 13),
(13, 15),
(13, 16),
(14, 4),
(14, 13),
(14, 2),
(14, 3),
(14, 7),
(14, 8);

INSERT INTO RESEARCHERS
(R_FIRSTNAME, R_SECONDNAME, R_STATUS)
VALUES
('Mal', 'Kashir', 'PGT'),
('George', 'Bryant', 'Y3 UG'),
('Emma', 'Chalker', 'PGT'),
('Andrew', 'Davies', 'Y3 UG'),
('Alice', 'Lambert', 'PGR'),
('Chris', 'Carrera', 'Y4 UG'),
('Mei', 'Lin', 'PGR'),
('Samira', 'Muhara', 'PGT'),
('Cait', 'Richards', 'PGR'),
('Dylan', 'French', 'Y4 UG'),
('Naomi', 'Ohara', 'PI');

INSERT INTO PXRD_INSTRUMENTS
(I_NAME, RADIATION)
VALUES
('unknown', "n/a"),
("PAN X'Pert", 'CuKa1,2'),
('PAN Empyrean', 'CuKa1,2'),
('PAN Empyrean', 'CuKa1'),
('Bruker Cu D8', 'CuKa1'),
('DLS I11', 'synchrotron');

INSERT INTO PXRD_EXPTS
(FILENAME, INSTRUMENT_ID)
VALUES
("In progress", 1);

INSERT INTO PXRD_EXPTS
(FILENAME, INSTRUMENT_ID, START_ANGLE, END_ANGLE, COLLECTION_TIME)
VALUES
("MK_5-6-1-1_EtOH.xrdml",1,4,40,30),
("MK_7-8-1-1-EtOH.xrdml",1,4,40,30),
("MK_7-9-1-1-EtOH.xrdml",1,4,40,30),
("MK_1-9-1-1-EtOH.xrdml",1,4,40,30),
("MK_2-9-1-1-EtOH.xrdml",1,4,40,30),
("MK_5-9-1-1-EtOH.xrdml",1,4,40,30),
("MK_7-2-1-1-DCM.xrdml",1,4,40,30),
("MK_7-2-1-1-EtOH.xrdml",1,4,40,30),
("MK_7-8-2-1-EtOH.xrdml",1,4,40,30),
("MK_7-8-2-1-DCM.xrdml",1,4,40,30),
("GB_2-10-1-1-MeOH.xrdml",1,4,40,30),
("GB_9-2-1-1-MeOH.xrdml",1,4,40,30),
("GB_8-2-1-1-MeOH.xrdml",1,4,40,30),
("GB_9-1-1-1-MeOH.xrdml",1,4,40,30),
("GB_1-10-1-1-MeOH.xrdml",1,4,40,30),
("EC_7-2-1-1-THF.xrdml",2,4,50,30),
("EC_7-2-1-1-MeOH.xrdml",2,4,50,30),
("EC_7-8-1-1-THF.xrdml",2,4,50,30),
("EC_7-8-1-1-MeOH.xrdml",2,4,50,30),
("AD_12-9-1-1-MeOH.xrdml",3,2,60,240),
("AD_12-8-1-1-MeOH.xrdml",2,4,50,30),
("AD_12-9-1-1-DCM.xrdml",2,4,50,30),
("AD_12-8-1-1-DCM.xrdml",2,4,50,30),
("AL_12-7-1-1-EtOH.xrdml",3,2,60,240),
("CC_12-6-1-1-EtOH.xrdml",5,2,90,0.5),
("ML_5-6-1-1_MeOH.xrdml",2,4,50,30),
("ML_7-8-1-1-MeOH.xrdml",2,4,50,30),
("SM_13-8-1-1_DCM.xrdml",1,4,40,30),
("CR_13-9-1-1_DCM.xrdml",1,4,40,30),
("DF_5-10-1-1_MeOH.xrdml",1,4,40,30),
("DF_5-10-1-1_DCM.xrdml",1,4,40,30),
("DF_5-10-1-1_EtOH.xrdml",1,4,40,30),
("NO_13-8-1-1_MeOH",5,2,90,0.5),
("NO_13-9-1-1_MeOH",5,2,90,0.5),
("NO_13-7-1-1_MeOH",5,2,90,0.5),
("NO_13-6-1-1_MeOH",5,2,90,0.5);


INSERT INTO EXPERIMENTS
(RESEARCHER_ID, EXPT_DATE, CF1_MOL_ID, CF2_MOL_ID, SOLVENT_MOL_ID, STOICHIOMETRY, TEMPERATURE, SUCCESS, PXRD_ID, NOTES)
VALUES
(1,"2017-05-12",5,6,11,1.1,293.13,TRUE,2,"Lots of peaks. Mixed."),
(1,"2017-05-12",7,8,11,1.1,293.13,TRUE,3,"Extra peaks. Some weird shift? Mixed."),
(1,"2017-05-12",7,9,11,1.1,293.13,TRUE,4,"Extra peaks. Mixed"),
(1,"2017-05-12",1,9,11,1.1,293.13,TRUE,5,"Extra peaks. Mixed"),
(1,"2017-05-12",2,9,11,1.1,293.13,TRUE,6,"Extra peaks. Mixed"),
(1,"2017-05-12",5,9,11,1.1,293.13,TRUE,7,"Extra peaks. Mixed"),
(1,"2017-05-13",7,2,4,1.1,293.13,TRUE,8,"Could be something else"),
(1,"2017-05-16",7,2,11,1.1,293.13,TRUE,9,"Maybe mixed. Similar to DCM"),
(1,"2017-06-16",7,8,11,2.1,293.13,TRUE,10,"Could be something else. Better than DCM?"),
(1,"2017-06-16",7,8,4,2.1,293.13,TRUE,11,"Could be something else. Similar to EtOH"),
(2,"2020-02-09",2,10,3,1.1,293.13,FALSE,12,"PXRD shows benzimidazole"),
(2,"2020-02-12",9,2,3,1.1,293.13,FALSE,13,"PXRD just 22'-bipy"),
(2,"2020-02-21",8,2,3,1.1,293.13,FALSE,14,"PXRD just 44'-bipy even cocrystal in literature"),
(2,"2020-02-21",9,1,3,1.1,293.13,FALSE,15,"Mixed"),
(2,"2020-02-19",1,10,3,1.1,293.13,FALSE,16,"Coformer"),
(3,"2021-11-27",7,2,14,1.1,293.13,TRUE,17,"Could be new"),
(3,"2021-11-29",7,2,14,1.1,293.13,TRUE,18,"Could be new"),
(3,"2021-11-30",7,8,14,2.1,293.13,TRUE,19,"Could be new"),
(3,"2021-11-30",7,8,14,2.1,293.13,TRUE,20,"Could be new"),
(4,"2022-02-12",12,9,3,1.1,293.13,FALSE,21,"Mixed"),
(4,"2022-02-12",12,8,3,1.1,293.13,FALSE,22,"Coformer"),
(4,"2022-02-22",12,9,4,1.1,293.13,FALSE,23,"Coformer"),
(4,"2022-02-22",12,8,4,1.1,293.13,FALSE,24,"Coformer"),
(5,"2022-05-23",12,7,11,1.1,293.13,FALSE,25,"Mixed"),
(6,"2022-07-23",12,6,11,1.1,293.13,FALSE,26,"Mixed"),
(7,"2022-09-08",5,6,3,1.1,293.13,TRUE,27,"Could be new"),
(7,"2022-09-08",7,8,3,1.1,293.13,TRUE,28,"Could be new"),
(8,"2022-09-17",13,8,4,1.1,293.13,TRUE,29,"Could be new"),
(9,"2022-09-21",13,9,4,1.1,293.13,TRUE,30,"Could be new"),
(10,"2022-09-30",5,10,3,1.1,293.13,FALSE,31,"Phloro and bzm"),
(10,"2022-09-30",5,10,4,1.1,293.13,FALSE,32,"Phloro and bzm"),
(10,"2022-09-30",5,10,11,1.1,293.13,FALSE,33,"Phloro and bzm"),
(11,"2022-10-02",13,8,3,1.1,293.13,TRUE,34,"Could be new"),
(11,"2022-10-02",13,9,3,1.1,293.13,TRUE,35,"Could be new"),
(11,"2022-10-02",13,7,3,1.1,293.13,FALSE,36,"Could be new"),
(11,"2022-10-02",13,6,3,1.1,293.13,FALSE,37,"Could be new");