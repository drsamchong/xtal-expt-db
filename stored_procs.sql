USE CRYSTN_EXPTS;

# Stored procedure:
# insert experiment info using researcher, pxrd file and chemical names. IDs are retrieved in proc, but
# probably should be separated out into functions (like molecules)

DELIMITER $$

CREATE PROCEDURE InsertExperiment(
#IN/OUT/INOUT <PARAMETRNAME> DATATYPE
IN ResearcherFirstName VARCHAR(20),
IN ResearcherLastName VARCHAR(20),
IN ExptDate DATE,
IN CF1Name VARCHAR(50),	
IN CF2Name VARCHAR(50),
IN SolventName VARCHAR(50),
IN Ratio VARCHAR(10),
IN TempK DECIMAL(6, 2),
IN SuccessBool BOOL,
IN PXRDFile VARCHAR(50),
IN Comments TEXT
)
BEGIN
# instruction
	DECLARE ResearcherID INT;
    DECLARE CF1ID INT;
    DECLARE CF2ID INT;
    DECLARE SOLVID INT;
    DECLARE PXRDID INT;
    
	SELECT GET_RESEARCHER_ID_FROM_NAME(ResearcherFirstName, ResearcherLastName)
	INTO ResearcherID;
    
    SELECT GET_MOL_ID_FROM_NAME(CF1Name)
    INTO CF1ID;    
	SELECT GET_MOL_ID_FROM_NAME(CF2Name)
    INTO CF2ID;
	SELECT GET_MOL_ID_FROM_NAME(SolventName)
    INTO SOLVID;
    
	SELECT GET_PXRD_ID_FROM_FILENAME(PXRDFile)
	INTO PXRDID;
    
	INSERT INTO EXPERIMENTS
	(RESEARCHER_ID, EXPT_DATE, CF1_MOL_ID, CF2_MOL_ID, SOLVENT_MOL_ID, STOICHIOMETRY, TEMPERATURE, SUCCESS, PXRD_ID,  NOTES)
	VALUES
	(ResearcherID, ExptDate, CF1ID, CF2ID, SOLVID, Ratio, TempK, SuccessBool, PXRDID, Comments);
END $$
DELIMITER ;

#DROP procedure InsertExperiment;

#CALL InsertExperiment("Sam", "Chong", "2022-11-03", "1,4-diiodobenzene", "phenazine", "dichloromethane", "1:1", 290, FALSE, "In progress", "who knows?");

