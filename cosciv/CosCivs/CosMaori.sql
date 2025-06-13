--毛利
--移除debuff
DELETE FROM TraitModifiers WHERE TraitType='TRAIT_CIVILIZATION_MAORI_MANA' AND ModifierId='TRAIT_MAORI_PREVENT_HARVEST';
DELETE FROM ExcludedGreatPersonClasses WHERE TraitType='TRAIT_CIVILIZATION_MAORI_MANA';
--未改良礁石+1锤,重商+1，保护地球+2
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_MAORI_MANA', 'PRODUCTION_REEF_CosMaori');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('PRODUCTION_REEF_CosMaori' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_REEF_NO_IMPROVEMENT_REQUIREMENTS');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_REEF_NO_IMPROVEMENT_REQUIREMENTS' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('PLOT_HAS_REEF_NO_IMPROVEMENT_REQUIREMENTS' , 'REQUIRES_PLOT_HAS_NO_IMPROVEMENT'),
('PLOT_HAS_REEF_NO_IMPROVEMENT_REQUIREMENTS' , 'REQUIRES_PLOT_HAS_REEF');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('PRODUCTION_REEF_CosMaori' , 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('PRODUCTION_REEF_CosMaori' , 'Amount', '1');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_MAORI_MANA', 'PRODUCTION_REEF_MERCANTILISM_CosMaori');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('PRODUCTION_REEF_MERCANTILISM_CosMaori' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_REEF_MERCANTILISM_REQUIREMENTS');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_REEF_MERCANTILISM_REQUIREMENTS' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('PLOT_HAS_REEF_MERCANTILISM_REQUIREMENTS' , 'REQUIRES_PLOT_HAS_NO_IMPROVEMENT'),
('PLOT_HAS_REEF_MERCANTILISM_REQUIREMENTS' , 'REQUIRES_PLOT_HAS_REEF'),
('PLOT_HAS_REEF_MERCANTILISM_REQUIREMENTS' , 'REQUIRES_PLAYER_HAS_MERCANTILISM');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('PRODUCTION_REEF_MERCANTILISM_CosMaori' , 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('PRODUCTION_REEF_MERCANTILISM_CosMaori' , 'Amount', '1');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_MAORI_MANA', 'PRODUCTION_REEF_CONSERVATION_CosMaori');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('PRODUCTION_REEF_CONSERVATION_CosMaori' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_REEF_CONSERVATION_REQUIREMENTS');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_REEF_CONSERVATION_REQUIREMENTS' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('PLOT_HAS_REEF_CONSERVATION_REQUIREMENTS' , 'REQUIRES_PLOT_HAS_NO_IMPROVEMENT'),
('PLOT_HAS_REEF_CONSERVATION_REQUIREMENTS' , 'REQUIRES_PLOT_HAS_REEF'),
('PLOT_HAS_REEF_CONSERVATION_REQUIREMENTS' , 'REQUIRES_PLAYER_HAS_CONSERVATION');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('PRODUCTION_REEF_CONSERVATION_CosMaori' , 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('PRODUCTION_REEF_CONSERVATION_CosMaori' , 'Amount', '2');
--库佩--
--建城前+5金币
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_KUPES_VOYAGE', 'GOLD_PRESETTLEMENT_CosMaori');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('GOLD_PRESETTLEMENT_CosMaori' , 'MODIFIER_PLAYER_ADJUST_YIELD_CHANGE', 'PLAYER_HAS_NO_CITIES');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('GOLD_PRESETTLEMENT_CosMaori' , 'YieldType', 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('GOLD_PRESETTLEMENT_CosMaori' , 'Amount', '5');
--毛利会堂
--+2专家槽位
UPDATE Buildings SET CitizenSlots=3 WHERE BuildingType='BUILDING_MARAE';
--托阿勇士--
--不取代剑客
DELETE FROM UnitReplaces WHERE CivUniqueUnitType='UNIT_MAORI_TOA';
DELETE FROM UnitUpgrades WHERE Unit='UNIT_MAORI_TOA';
--不被淘汰
UPDATE Units SET MandatoryObsoleteTech=NULL WHERE UnitType='UNIT_MAORI_TOA';
--帕堡--
--+2住房
UPDATE Improvements SET Housing=2 WHERE ImprovementType='IMPROVEMENT_MAORI_PA';
--+2食物
INSERT INTO Improvement_YieldChanges (ImprovementType, YieldType, YieldChange)
	VALUES 	('IMPROVEMENT_MAORI_PA' , 'YIELD_FOOD', 2);
--+1魅力
UPDATE Improvements SET Appeal=1 WHERE ImprovementType='IMPROVEMENT_MAORI_PA';
--相邻可通行地貌+1生产力、1食物
INSERT INTO ImprovementModifiers (ImprovementType, ModifierID) VALUES
('IMPROVEMENT_MAORI_PA', 'PA_ADJACENCY_FOOD_CosMaori'),
('IMPROVEMENT_MAORI_PA', 'PA_ADJACENCY_PRODUCTION_CosMaori');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('PA_ADJACENCY_FOOD_CosMaori' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD','ADJACENCY_HAS_ANY_PASSABLE_FEATURE_REQUIREMENTS_CosMaori'),
('PA_ADJACENCY_PRODUCTION_CosMaori' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD','ADJACENCY_HAS_ANY_PASSABLE_FEATURE_REQUIREMENTS_CosMaori');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('ADJACENCY_HAS_ANY_PASSABLE_FEATURE_REQUIREMENTS_CosMaori' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('ADJACENCY_HAS_ANY_PASSABLE_FEATURE_REQUIREMENTS_CosMaori' , 'PLOT_HAS_ANY_FEATURE_REQUIREMENT'),
('ADJACENCY_HAS_ANY_PASSABLE_FEATURE_REQUIREMENTS_CosMaori' , 'PLOT_IS_PASSABLE'),
('ADJACENCY_HAS_ANY_PASSABLE_FEATURE_REQUIREMENTS_CosMaori' , 'ADJACENT_TO_OWNER');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('PA_ADJACENCY_FOOD_CosMaori' , 'YieldType' , 'YIELD_FOOD'),
('PA_ADJACENCY_FOOD_CosMaori' , 'Amount' , '1'),
('PA_ADJACENCY_PRODUCTION_CosMaori' , 'YieldType' , 'YIELD_PRODUCTION'),
('PA_ADJACENCY_PRODUCTION_CosMaori' , 'Amount' , '1');
--土木工程后可建在平地上
INSERT INTO Improvement_ValidTerrains (ImprovementType,	TerrainType, PrereqCivic) VALUES
('IMPROVEMENT_MAORI_PA','TERRAIN_DESERT','CIVIC_CIVIL_ENGINEERING'),
('IMPROVEMENT_MAORI_PA','TERRAIN_TUNDRA',	'CIVIC_CIVIL_ENGINEERING'),
('IMPROVEMENT_MAORI_PA','TERRAIN_PLAINS','CIVIC_CIVIL_ENGINEERING'),
('IMPROVEMENT_MAORI_PA','TERRAIN_GRASS',	'CIVIC_CIVIL_ENGINEERING'),
('IMPROVEMENT_MAORI_PA','TERRAIN_SNOW','CIVIC_CIVIL_ENGINEERING');
--可以建在泛滥上
INSERT INTO Improvement_ValidFeatures (ImprovementType, FeatureType, PrereqCivic) VALUES
    ('IMPROVEMENT_MAORI_PA', 'FEATURE_FLOODPLAINS','CIVIC_CIVIL_ENGINEERING'),
	('IMPROVEMENT_MAORI_PA', 'FEATURE_FLOODPLAINS_PLAINS','CIVIC_CIVIL_ENGINEERING'),
	('IMPROVEMENT_MAORI_PA', 'FEATURE_FLOODPLAINS_GRASSLAND','CIVIC_CIVIL_ENGINEERING');