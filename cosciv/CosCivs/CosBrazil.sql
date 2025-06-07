--巴西
--雨林为工业区提供标准相邻加成
INSERT INTO TraitModifiers (TraitType, ModifierId) 
    VALUES ('TRAIT_CIVILIZATION_AMAZON', 'TRAIT_AMAZON_RAINFOREST_INDUSTRIAL_ADJACENCY_CosBrazil');
INSERT INTO Modifiers (ModifierId , ModifierType)
    VALUES ('TRAIT_AMAZON_RAINFOREST_INDUSTRIAL_ADJACENCY_CosBrazil' , 'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
    VALUES ('TRAIT_AMAZON_RAINFOREST_INDUSTRIAL_ADJACENCY_CosBrazil' , 'Description' , 'LOC_DISTRICT_JUNGLE_2_PRODUCTION_CosBrazil');	
INSERT INTO ModifierArguments (ModifierId , Name , Value)
    VALUES ('TRAIT_AMAZON_RAINFOREST_INDUSTRIAL_ADJACENCY_CosBrazil' , 'DistrictType' , 'DISTRICT_INDUSTRIAL_ZONE');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
    VALUES ('TRAIT_AMAZON_RAINFOREST_INDUSTRIAL_ADJACENCY_CosBrazil' , 'FeatureType' , 'FEATURE_JUNGLE');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
    VALUES ('TRAIT_AMAZON_RAINFOREST_INDUSTRIAL_ADJACENCY_CosBrazil' , 'YieldType' , 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
    VALUES ('TRAIT_AMAZON_RAINFOREST_INDUSTRIAL_ADJACENCY_CosBrazil' , 'Amount' , '1');
--雨林为街头狂欢节提供金币相邻加成
INSERT INTO TraitModifiers (TraitType, ModifierId) 
    VALUES ('TRAIT_CIVILIZATION_AMAZON', 'TRAIT_AMAZON_RAINFOREST_STREET_CARNIVAL_ADJACENCY_CosBrazil');
INSERT INTO Modifiers (ModifierId , ModifierType)
    VALUES ('TRAIT_AMAZON_RAINFOREST_STREET_CARNIVAL_ADJACENCY_CosBrazil' , 'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
    VALUES ('TRAIT_AMAZON_RAINFOREST_STREET_CARNIVAL_ADJACENCY_CosBrazil' , 'Description' , 'LOC_DISTRICT_JUNGLE_2_GOLD');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
    VALUES ('TRAIT_AMAZON_RAINFOREST_STREET_CARNIVAL_ADJACENCY_CosBrazil' , 'DistrictType' , 'DISTRICT_STREET_CARNIVAL');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
    VALUES ('TRAIT_AMAZON_RAINFOREST_STREET_CARNIVAL_ADJACENCY_CosBrazil' , 'FeatureType' , 'FEATURE_JUNGLE');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
    VALUES ('TRAIT_AMAZON_RAINFOREST_STREET_CARNIVAL_ADJACENCY_CosBrazil' , 'YieldType' , 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
    VALUES ('TRAIT_AMAZON_RAINFOREST_STREET_CARNIVAL_ADJACENCY_CosBrazil' , 'Amount' , '1');
--雨林为科帕卡瓦纳提供金币相邻加成
INSERT INTO TraitModifiers (TraitType, ModifierId) 
    VALUES ('TRAIT_CIVILIZATION_AMAZON', 'TRAIT_AMAZON_RAINFOREST_WATER_STREET_CARNIVAL_ADJACENCY_CosBrazil');
INSERT INTO Modifiers (ModifierId , ModifierType)
    VALUES ('TRAIT_AMAZON_RAINFOREST_WATER_STREET_CARNIVAL_ADJACENCY_CosBrazil' , 'MODIFIER_PLAYER_CITIES_FEATURE_ADJACENCY');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
    VALUES ('TRAIT_AMAZON_RAINFOREST_WATER_STREET_CARNIVAL_ADJACENCY_CosBrazil' , 'Description' , 'LOC_DISTRICT_JUNGLE_2_GOLD');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
    VALUES ('TRAIT_AMAZON_RAINFOREST_WATER_STREET_CARNIVAL_ADJACENCY_CosBrazil' , 'DistrictType' , 'DISTRICT_WATER_STREET_CARNIVAL');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
    VALUES ('TRAIT_AMAZON_RAINFOREST_WATER_STREET_CARNIVAL_ADJACENCY_CosBrazil' , 'FeatureType' , 'FEATURE_JUNGLE');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
    VALUES ('TRAIT_AMAZON_RAINFOREST_WATER_STREET_CARNIVAL_ADJACENCY_CosBrazil' , 'YieldType' , 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
    VALUES ('TRAIT_AMAZON_RAINFOREST_WATER_STREET_CARNIVAL_ADJACENCY_CosBrazil' , 'Amount' , '1');
--已改良雨林加1锤
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_AMAZON', 'INCREASED_JUNGLE_PRODUCTION_CosBrazil');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('INCREASED_JUNGLE_PRODUCTION_CosBrazil' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_IMPROVED_JUNGLE_REQUIREMENTS_CosVietnam');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('INCREASED_JUNGLE_PRODUCTION_CosBrazil' , 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('INCREASED_JUNGLE_PRODUCTION_CosBrazil' , 'Amount', '1');
--未改良雨林加1信仰
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_AMAZON', 'INCREASED_JUNGLE_FAITH_CosBrazil');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('INCREASED_JUNGLE_FAITH_CosBrazil' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_JUNGLE_NO_IMPROVEMENT_REQUIREMENTS');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('INCREASED_JUNGLE_FAITH_CosBrazil' , 'YieldType', 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('INCREASED_JUNGLE_FAITH_CosBrazil' , 'Amount', '1');
--学院、商业、圣地、工业、剧院可以建造在雨林上
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_AMAZON', 'CAMPUS_JUNGLE_CosBrazil');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('CAMPUS_JUNGLE_CosBrazil' , 'MODIFIER_PLAYER_CITIES_ADJUST_VALID_FEATURES_DISTRICTS', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('CAMPUS_JUNGLE_CosBrazil' , 'DistrictType', 'DISTRICT_CAMPUS');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('CAMPUS_JUNGLE_CosBrazil' , 'FeatureType', 'FEATURE_JUNGLE');

INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_AMAZON', 'THEATER_JUNGLE_CosBrazil');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('THEATER_JUNGLE_CosBrazil' , 'MODIFIER_PLAYER_CITIES_ADJUST_VALID_FEATURES_DISTRICTS', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('THEATER_JUNGLE_CosBrazil' , 'DistrictType', 'DISTRICT_THEATER');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('THEATER_JUNGLE_CosBrazil' , 'FeatureType', 'FEATURE_JUNGLE');

INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_AMAZON', 'COMMERCIAL_HUBS_JUNGLE_CosBrazil');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('COMMERCIAL_HUBS_JUNGLE_CosBrazil' , 'MODIFIER_PLAYER_CITIES_ADJUST_VALID_FEATURES_DISTRICTS', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('COMMERCIAL_HUBS_JUNGLE_CosBrazil' , 'DistrictType', 'DISTRICT_COMMERCIAL_HUBS');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('COMMERCIAL_HUBS_JUNGLE_CosBrazil' , 'FeatureType', 'FEATURE_JUNGLE');

INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_AMAZON', 'HOLY_SITE_JUNGLE_CosBrazil');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('HOLY_SITE_JUNGLE_CosBrazil' , 'MODIFIER_PLAYER_CITIES_ADJUST_VALID_FEATURES_DISTRICTS', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('HOLY_SITE_JUNGLE_CosBrazil' , 'DistrictType', 'DISTRICT_HOLY_SITE');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('HOLY_SITE_JUNGLE_CosBrazil' , 'FeatureType', 'FEATURE_JUNGLE');

INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_AMAZON', 'INDUSTRIAL_ZONE_JUNGLE_CosBrazil');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('INDUSTRIAL_ZONE_JUNGLE_CosBrazil' , 'MODIFIER_PLAYER_CITIES_ADJUST_VALID_FEATURES_DISTRICTS', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('INDUSTRIAL_ZONE_JUNGLE_CosBrazil' , 'DistrictType', 'DISTRICT_INDUSTRIAL_ZONE');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('INDUSTRIAL_ZONE_JUNGLE_CosBrazil' , 'FeatureType', 'FEATURE_JUNGLE');

--雨林一级关联
UPDATE StartBiasFeatures SET Tier=1 WHERE CivilizationType	='CIVILIZATION_BRAZIL' AND FeatureType='FEATURE_JUNGLE'; 
