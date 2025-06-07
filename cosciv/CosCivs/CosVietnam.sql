--越南
--国家劳动力种树
UPDATE ModifierArguments SET Value='CIVIC_STATE_WORKFORCE' WHERE ModifierId='TRAIT_PLANT_MEDIEVAL_WOODS' and Name='CivicType';
--专业化区域可以建在树林雨林沼泽上
DELETE FROM TraitModifiers WHERE TraitType='TRAIT_CIVILIZATION_VIETNAM' AND ModifierId='TRAIT_DISTRICTS_FOREST_ONLY';
DELETE FROM TraitModifiers WHERE TraitType='TRAIT_CIVILIZATION_VIETNAM' AND ModifierId='TRAIT_DISTRICTS_MARSH_ONLY';
DELETE FROM TraitModifiers WHERE TraitType='TRAIT_CIVILIZATION_VIETNAM' AND ModifierId='TRAIT_DISTRICTS_JUNGLE_ONLY';
INSERT INTO TraitModifiers (TraitType, ModifierId) SELECT
'TRAIT_CIVILIZATION_VIETNAM', DistrictType || '_JUNGLE_CosVietnam' FROM Districts WHERE RequiresPopulation=1;
INSERT INTO Modifiers (ModifierId, ModifierType) SELECT
DistrictType || '_JUNGLE_CosVietnam', 'MODIFIER_PLAYER_CITIES_ADJUST_VALID_FEATURES_DISTRICTS' FROM Districts WHERE RequiresPopulation=1;
INSERT INTO ModifierArguments (ModifierId, Name, Value) SELECT
DistrictType || '_JUNGLE_CosVietnam', 'DistrictType', DistrictType FROM Districts WHERE RequiresPopulation=1;
INSERT INTO ModifierArguments (ModifierId, Name, Value) SELECT
DistrictType || '_JUNGLE_CosVietnam', 'FeatureType', 'FEATURE_JUNGLE' FROM Districts WHERE RequiresPopulation=1;
INSERT INTO TraitModifiers (TraitType, ModifierId) SELECT
'TRAIT_CIVILIZATION_VIETNAM', DistrictType || '_FOREST_CosVietnam' FROM Districts WHERE RequiresPopulation=1;
INSERT INTO Modifiers (ModifierId, ModifierType) SELECT
DistrictType || '_FOREST_CosVietnam', 'MODIFIER_PLAYER_CITIES_ADJUST_VALID_FEATURES_DISTRICTS' FROM Districts WHERE RequiresPopulation=1;
INSERT INTO ModifierArguments (ModifierId, Name, Value) SELECT
DistrictType || '_FOREST_CosVietnam', 'DistrictType', DistrictType FROM Districts WHERE RequiresPopulation=1;
INSERT INTO ModifierArguments (ModifierId, Name, Value) SELECT
DistrictType || '_FOREST_CosVietnam', 'FeatureType', 'FEATURE_FOREST' FROM Districts WHERE RequiresPopulation=1;
INSERT INTO TraitModifiers (TraitType, ModifierId) SELECT
'TRAIT_CIVILIZATION_VIETNAM', DistrictType || '_MARSH_CosVietnam' FROM Districts WHERE RequiresPopulation=1;
INSERT INTO Modifiers (ModifierId, ModifierType) SELECT
DistrictType || '_MARSH_CosVietnam', 'MODIFIER_PLAYER_CITIES_ADJUST_VALID_FEATURES_DISTRICTS' FROM Districts WHERE RequiresPopulation=1;
INSERT INTO ModifierArguments (ModifierId, Name, Value) SELECT
DistrictType || '_MARSH_CosVietnam', 'DistrictType', DistrictType FROM Districts WHERE RequiresPopulation=1;
INSERT INTO ModifierArguments (ModifierId, Name, Value) SELECT
DistrictType || '_MARSH_CosVietnam', 'FeatureType', 'FEATURE_MARSH' FROM Districts WHERE RequiresPopulation=1;
--树林改良给文化
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_VIETNAM', 'IMPROVED_FOREST_CULTURE_CosVietnam');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('IMPROVED_FOREST_CULTURE_CosVietnam' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_IMPROVED_FOREST_REQUIREMENTS_CosVietnam');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('IMPROVED_FOREST_CULTURE_CosVietnam', 'YieldType', 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('IMPROVED_FOREST_CULTURE_CosVietnam', 'Amount', '0'); --取消
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_IMPROVED_FOREST_REQUIREMENTS_CosVietnam' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_IMPROVED_FOREST_REQUIREMENTS_CosVietnam' , 'PLOT_IS_FOREST_REQUIREMENT');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_IMPROVED_FOREST_REQUIREMENTS_CosVietnam' , 'REQUIRES_PLOT_HAS_IMPROVEMENT_Cos');
--树林改良给金币
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_VIETNAM', 'IMPROVED_FOREST_GOLD_CosVietnam');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('IMPROVED_FOREST_GOLD_CosVietnam' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_IMPROVED_FOREST_REQUIREMENTS_CosVietnam');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('IMPROVED_FOREST_GOLD_CosVietnam', 'YieldType', 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('IMPROVED_FOREST_GOLD_CosVietnam', 'Amount', '1');
--树林建筑给金币
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_VIETNAM', 'FOREST_BUILDINGS_GOLD_CosVietnam');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('FOREST_BUILDINGS_GOLD_CosVietnam' , 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_FEATURE_YIELD_CHANGE', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('FOREST_BUILDINGS_GOLD_CosVietnam', 'FeatureType', 'FEATURE_FOREST');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('FOREST_BUILDINGS_GOLD_CosVietnam', 'YieldType', 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('FOREST_BUILDINGS_GOLD_CosVietnam', 'Amount', '1');
--树林区域给文化
INSERT INTO TraitModifiers (TraitType, ModifierId) 
    VALUES ('TRAIT_CIVILIZATION_VIETNAM', 'DISTRICTS_FOREST_CULTURE_CosVietnam');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('DISTRICTS_FOREST_CULTURE_CosVietnam' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 'PLOT_HAS_FOREST_REQUIREMENTS_Cos');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('DISTRICTS_FOREST_CULTURE_CosVietnam' , 'YieldType', 'YIELD_CULTURE'),
('DISTRICTS_FOREST_CULTURE_CosVietnam' , 'Amount' , '1');
--树林雨林沼泽区域给金币
INSERT INTO TraitModifiers (TraitType, ModifierId) 
    VALUES ('TRAIT_CIVILIZATION_VIETNAM', 'DISTRICTS_GOLD_CosVietnam');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('DISTRICTS_GOLD_CosVietnam' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 'PLOT_HAS_FOREST_JUNGLE_MARSH_REQUIREMENTS_Cos');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_FOREST_JUNGLE_MARSH_REQUIREMENTS_Cos' , 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('PLOT_HAS_FOREST_JUNGLE_MARSH_REQUIREMENTS_Cos' , 'REQUIRES_PLOT_HAS_JUNGLE'),
('PLOT_HAS_FOREST_JUNGLE_MARSH_REQUIREMENTS_Cos' , 'REQUIRES_PLOT_HAS_MARSH'),
('PLOT_HAS_FOREST_JUNGLE_MARSH_REQUIREMENTS_Cos' , 'PLOT_IS_FOREST_REQUIREMENT');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('DISTRICTS_GOLD_CosVietnam' , 'YieldType', 'YIELD_GOLD'),
('DISTRICTS_GOLD_CosVietnam' , 'Amount' , '1');
--雨林改良给科技
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_VIETNAM', 'IMPROVED_JUNGLE_SCIENCE_CosVietnam');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('IMPROVED_JUNGLE_SCIENCE_CosVietnam' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_IMPROVED_JUNGLE_REQUIREMENTS_CosVietnam');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('IMPROVED_JUNGLE_SCIENCE_CosVietnam', 'YieldType', 'YIELD_SCIENCE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('IMPROVED_JUNGLE_SCIENCE_CosVietnam', 'Amount', '0');  --取消
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_IMPROVED_JUNGLE_REQUIREMENTS_CosVietnam' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_IMPROVED_JUNGLE_REQUIREMENTS_CosVietnam' , 'REQUIRES_PLOT_HAS_JUNGLE');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_IMPROVED_JUNGLE_REQUIREMENTS_CosVietnam' , 'REQUIRES_PLOT_HAS_IMPROVEMENT_Cos');
--雨林改良给金币
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_VIETNAM', 'IMPROVED_JUNGLE_GOLD_CosVietnam');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('IMPROVED_JUNGLE_GOLD_CosVietnam' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_IMPROVED_JUNGLE_REQUIREMENTS_CosVietnam');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('IMPROVED_JUNGLE_GOLD_CosVietnam', 'YieldType', 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('IMPROVED_JUNGLE_GOLD_CosVietnam', 'Amount', '1');
--雨林建筑给金币
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_VIETNAM', 'JUNGLE_BUILDINGS_GOLD_CosVietnam');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('JUNGLE_BUILDINGS_GOLD_CosVietnam' , 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_FEATURE_YIELD_CHANGE', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('JUNGLE_BUILDINGS_GOLD_CosVietnam', 'FeatureType', 'FEATURE_JUNGLE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('JUNGLE_BUILDINGS_GOLD_CosVietnam', 'YieldType', 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('JUNGLE_BUILDINGS_GOLD_CosVietnam', 'Amount', '1');
--雨林区域给科技
INSERT INTO TraitModifiers (TraitType, ModifierId) 
    VALUES ('TRAIT_CIVILIZATION_VIETNAM', 'DISTRICTS_JUNGLE_SCIENCE_CosVietnam');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('DISTRICTS_JUNGLE_SCIENCE_CosVietnam' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 'ZOO_RAINFOREST_REQUIREMENTS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('DISTRICTS_JUNGLE_SCIENCE_CosVietnam' , 'YieldType', 'YIELD_SCIENCE'),
('DISTRICTS_JUNGLE_SCIENCE_CosVietnam' , 'Amount' , '1');
--沼泽改良给锤
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_VIETNAM', 'IMPROVED_MARSH_PRODUCTION_CosVietnam');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('IMPROVED_MARSH_PRODUCTION_CosVietnam' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_IMPROVED_MARSH_REQUIREMENTS_CosVietnam');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('IMPROVED_MARSH_PRODUCTION_CosVietnam', 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('IMPROVED_MARSH_PRODUCTION_CosVietnam', 'Amount', '0');  --取消
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_IMPROVED_MARSH_REQUIREMENTS_CosVietnam' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_IMPROVED_MARSH_REQUIREMENTS_CosVietnam' , 'REQUIRES_PLOT_HAS_MARSH');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_IMPROVED_MARSH_REQUIREMENTS_CosVietnam' , 'REQUIRES_PLOT_HAS_IMPROVEMENT_Cos');
INSERT INTO Requirements (RequirementId , RequirementType, Inverse) VALUES
('REQUIRES_PLOT_HAS_IMPROVEMENT_Cos' , 'REQUIREMENT_PLOT_HAS_ANY_IMPROVEMENT', 0);
--沼泽改良给金币
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_VIETNAM', 'IMPROVED_MARSH_GOLD_CosVietnam');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('IMPROVED_MARSH_GOLD_CosVietnam' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_IMPROVED_MARSH_REQUIREMENTS_CosVietnam');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('IMPROVED_MARSH_GOLD_CosVietnam', 'YieldType', 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('IMPROVED_MARSH_GOLD_CosVietnam', 'Amount', '1');
--沼泽建筑给金币
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_VIETNAM', 'MARSH_BUILDINGS_GOLD_CosVietnam');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('MARSH_BUILDINGS_GOLD_CosVietnam' , 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_FEATURE_YIELD_CHANGE', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('MARSH_BUILDINGS_GOLD_CosVietnam', 'FeatureType', 'FEATURE_MARSH');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('MARSH_BUILDINGS_GOLD_CosVietnam', 'YieldType', 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('MARSH_BUILDINGS_GOLD_CosVietnam', 'Amount', '1');
--沼泽区域给锤
INSERT INTO TraitModifiers (TraitType, ModifierId) 
    VALUES ('TRAIT_CIVILIZATION_VIETNAM', 'DISTRICTS_MARSH_PRODUCTION_CosVietnam');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('DISTRICTS_MARSH_PRODUCTION_CosVietnam' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 'ZOO_MARSH_REQUIREMENTS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('DISTRICTS_MARSH_PRODUCTION_CosVietnam' , 'YieldType', 'YIELD_PRODUCTION'),
('DISTRICTS_MARSH_PRODUCTION_CosVietnam' , 'Amount' , '1');
--城池--
--给大军点
INSERT INTO District_GreatPersonPoints (DistrictType , GreatPersonClassType , PointsPerTurn)
	VALUES ('DISTRICT_THANH', 'GREAT_PERSON_CLASS_GENERAL', '1');
--象兵--
--无视控制区
INSERT INTO TypeTags(Type, Tag) VALUES
('ABILITY_IGNORE_ZOC', 'CLASS_VOI_CHIEN');