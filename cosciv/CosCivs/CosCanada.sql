--加拿大
--劳雷尔--
--冻土平原牧场加锤
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LAST_BEST_WEST', 'TUNDRA_PASTURE_PRODUCTION_CosCanada');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TUNDRA_PASTURE_PRODUCTION_CosCanada' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_TUNDRA_PASTURE_REQUIREMENTS_CosCanada');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TUNDRA_PASTURE_PRODUCTION_CosCanada', 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TUNDRA_PASTURE_PRODUCTION_CosCanada', 'Amount', '2');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_TUNDRA_PASTURE_REQUIREMENTS_CosCanada' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_TUNDRA_PASTURE_REQUIREMENTS_CosCanada' , 'REQUIRES_PLOT_HAS_PASTURE');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_TUNDRA_PASTURE_REQUIREMENTS_CosCanada' , 'REQUIRES_PLOT_HAS_TUNDRA');
--冻土丘陵牧场加锤
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LAST_BEST_WEST', 'TUNDRA_HILLS_PASTURE_PRODUCTION_CosCanada');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TUNDRA_HILLS_PASTURE_PRODUCTION_CosCanada' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_TUNDRA_HILLS_PASTURE_REQUIREMENTS_CosCanada');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TUNDRA_HILLS_PASTURE_PRODUCTION_CosCanada', 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TUNDRA_HILLS_PASTURE_PRODUCTION_CosCanada', 'Amount', '2');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_TUNDRA_HILLS_PASTURE_REQUIREMENTS_CosCanada' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_TUNDRA_HILLS_PASTURE_REQUIREMENTS_CosCanada' , 'REQUIRES_PLOT_HAS_PASTURE');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_TUNDRA_HILLS_PASTURE_REQUIREMENTS_CosCanada' , 'REQUIRES_PLOT_HAS_TUNDRA_HILLS');
--雪地平原牧场加锤
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LAST_BEST_WEST', 'SNOW_PASTURE_PRODUCTION_CosCanada');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('SNOW_PASTURE_PRODUCTION_CosCanada' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_SNOW_PASTURE_REQUIREMENTS_CosCanada');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('SNOW_PASTURE_PRODUCTION_CosCanada', 'YieldType', 'YIELD_PRODUCTION'),
('SNOW_PASTURE_PRODUCTION_CosCanada', 'Amount', '2');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_SNOW_PASTURE_REQUIREMENTS_CosCanada' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('PLOT_HAS_SNOW_PASTURE_REQUIREMENTS_CosCanada' , 'REQUIRES_PLOT_HAS_PASTURE'),
('PLOT_HAS_SNOW_PASTURE_REQUIREMENTS_CosCanada' , 'REQUIRES_PLOT_HAS_SNOW');
--雪地丘陵牧场加锤
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LAST_BEST_WEST', 'SNOW_HILLS_PASTURE_PRODUCTION_CosCanada');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('SNOW_HILLS_PASTURE_PRODUCTION_CosCanada' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_SNOW_HILLS_PASTURE_REQUIREMENTS_CosCanada');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('SNOW_HILLS_PASTURE_PRODUCTION_CosCanada', 'YieldType', 'YIELD_PRODUCTION'),
('SNOW_HILLS_PASTURE_PRODUCTION_CosCanada', 'Amount', '2');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_SNOW_HILLS_PASTURE_REQUIREMENTS_CosCanada' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('PLOT_HAS_SNOW_HILLS_PASTURE_REQUIREMENTS_CosCanada' , 'REQUIRES_PLOT_HAS_PASTURE'),
('PLOT_HAS_SNOW_HILLS_PASTURE_REQUIREMENTS_CosCanada' , 'PLOT_IS_SNOW_HILLS_TERRAIN_REQUIREMENT');
--冻土平原采石场加锤
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LAST_BEST_WEST', 'TUNDRA_QUARRY_PRODUCTION_CosCanada');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TUNDRA_QUARRY_PRODUCTION_CosCanada' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_TUNDRA_QUARRY_REQUIREMENTS_CosCanada');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TUNDRA_QUARRY_PRODUCTION_CosCanada', 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TUNDRA_QUARRY_PRODUCTION_CosCanada', 'Amount', '2');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_TUNDRA_QUARRY_REQUIREMENTS_CosCanada' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_TUNDRA_QUARRY_REQUIREMENTS_CosCanada' , 'REQUIRES_PLOT_HAS_QUARRY');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_TUNDRA_QUARRY_REQUIREMENTS_CosCanada' , 'REQUIRES_PLOT_HAS_TUNDRA');
--冻土丘陵采石场加锤
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LAST_BEST_WEST', 'TUNDRA_HILLS_QUARRY_PRODUCTION_CosCanada');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TUNDRA_HILLS_QUARRY_PRODUCTION_CosCanada' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_TUNDRA_HILLS_QUARRY_REQUIREMENTS_CosCanada');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TUNDRA_HILLS_QUARRY_PRODUCTION_CosCanada', 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TUNDRA_HILLS_QUARRY_PRODUCTION_CosCanada', 'Amount', '2');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_TUNDRA_HILLS_QUARRY_REQUIREMENTS_CosCanada' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_TUNDRA_HILLS_QUARRY_REQUIREMENTS_CosCanada' , 'REQUIRES_PLOT_HAS_QUARRY');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_TUNDRA_HILLS_QUARRY_REQUIREMENTS_CosCanada' , 'REQUIRES_PLOT_HAS_TUNDRA_HILLS');
--雪地平原采石场加锤
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LAST_BEST_WEST', 'SNOW_QUARRY_PRODUCTION_CosCanada');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('SNOW_QUARRY_PRODUCTION_CosCanada' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_SNOW_QUARRY_REQUIREMENTS_CosCanada');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('SNOW_QUARRY_PRODUCTION_CosCanada', 'YieldType', 'YIELD_PRODUCTION'),
('SNOW_QUARRY_PRODUCTION_CosCanada', 'Amount', '2');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_SNOW_QUARRY_REQUIREMENTS_CosCanada' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('PLOT_HAS_SNOW_QUARRY_REQUIREMENTS_CosCanada' , 'REQUIRES_PLOT_HAS_QUARRY'),
('PLOT_HAS_SNOW_QUARRY_REQUIREMENTS_CosCanada' , 'REQUIRES_PLOT_HAS_SNOW');
--雪地丘陵采石场加锤
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LAST_BEST_WEST', 'SNOW_HILLS_QUARRY_PRODUCTION_CosCanada');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('SNOW_HILLS_QUARRY_PRODUCTION_CosCanada' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_SNOW_HILLS_QUARRY_REQUIREMENTS_CosCanada');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('SNOW_HILLS_QUARRY_PRODUCTION_CosCanada', 'YieldType', 'YIELD_PRODUCTION'),
('SNOW_HILLS_QUARRY_PRODUCTION_CosCanada', 'Amount', '2');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_SNOW_HILLS_QUARRY_REQUIREMENTS_CosCanada' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('PLOT_HAS_SNOW_HILLS_QUARRY_REQUIREMENTS_CosCanada' , 'REQUIRES_PLOT_HAS_QUARRY'),
('PLOT_HAS_SNOW_HILLS_QUARRY_REQUIREMENTS_CosCanada' , 'PLOT_IS_SNOW_HILLS_TERRAIN_REQUIREMENT');
--冻土平原种植园加粮
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LAST_BEST_WEST', 'TUNDRA_PLANTATION_FOOD_CosCanada');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TUNDRA_PLANTATION_FOOD_CosCanada' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_TUNDRA_PLANTATION_REQUIREMENTS_CosCanada');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TUNDRA_PLANTATION_FOOD_CosCanada', 'YieldType', 'YIELD_FOOD');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TUNDRA_PLANTATION_FOOD_CosCanada', 'Amount', '2');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_TUNDRA_PLANTATION_REQUIREMENTS_CosCanada' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_TUNDRA_PLANTATION_REQUIREMENTS_CosCanada' , 'REQUIRES_PLOT_HAS_PLANTATION');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_TUNDRA_PLANTATION_REQUIREMENTS_CosCanada' , 'REQUIRES_PLOT_HAS_TUNDRA');
--冻土丘陵种植园加粮
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LAST_BEST_WEST', 'TUNDRA_HILLS_PLANTATION_FOOD_CosCanada');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TUNDRA_HILLS_PLANTATION_FOOD_CosCanada' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_TUNDRA_HILLS_PLANTATION_REQUIREMENTS_CosCanada');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TUNDRA_HILLS_PLANTATION_FOOD_CosCanada', 'YieldType', 'YIELD_FOOD');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TUNDRA_HILLS_PLANTATION_FOOD_CosCanada', 'Amount', '2');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_TUNDRA_HILLS_PLANTATION_REQUIREMENTS_CosCanada' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_TUNDRA_HILLS_PLANTATION_REQUIREMENTS_CosCanada' , 'REQUIRES_PLOT_HAS_PLANTATION');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_TUNDRA_HILLS_PLANTATION_REQUIREMENTS_CosCanada' , 'REQUIRES_PLOT_HAS_TUNDRA_HILLS');
--雪地平原种植园加粮
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LAST_BEST_WEST', 'SNOW_PLANTATION_FOOD_CosCanada');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('SNOW_PLANTATION_FOOD_CosCanada' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_SNOW_PLANTATION_REQUIREMENTS_CosCanada');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('SNOW_PLANTATION_FOOD_CosCanada', 'YieldType', 'YIELD_FOOD'),
('SNOW_PLANTATION_FOOD_CosCanada', 'Amount', '2');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_SNOW_PLANTATION_REQUIREMENTS_CosCanada' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('PLOT_HAS_SNOW_PLANTATION_REQUIREMENTS_CosCanada' , 'REQUIRES_PLOT_HAS_PLANTATION'),
('PLOT_HAS_SNOW_PLANTATION_REQUIREMENTS_CosCanada' , 'REQUIRES_PLOT_HAS_SNOW');
--雪地丘陵种植园加粮
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LAST_BEST_WEST', 'SNOW_HILLS_PLANTATION_FOOD_CosCanada');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('SNOW_HILLS_PLANTATION_FOOD_CosCanada' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_SNOW_HILLS_PLANTATION_REQUIREMENTS_CosCanada');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('SNOW_HILLS_PLANTATION_FOOD_CosCanada', 'YieldType', 'YIELD_FOOD'),
('SNOW_HILLS_PLANTATION_FOOD_CosCanada', 'Amount', '2');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_SNOW_HILLS_PLANTATION_REQUIREMENTS_CosCanada' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('PLOT_HAS_SNOW_HILLS_PLANTATION_REQUIREMENTS_CosCanada' , 'REQUIRES_PLOT_HAS_PLANTATION'),
('PLOT_HAS_SNOW_HILLS_PLANTATION_REQUIREMENTS_CosCanada' , 'PLOT_IS_SNOW_HILLS_TERRAIN_REQUIREMENT');
--冻土平原加2金
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LAST_BEST_WEST', 'INCREASED_TUNDRA_GOLD');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('INCREASED_TUNDRA_GOLD' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_TUNDRA_REQUIREMENTS');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('INCREASED_TUNDRA_GOLD' , 'YieldType', 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('INCREASED_TUNDRA_GOLD' , 'Amount', '2');
--冻土丘陵加2金
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LAST_BEST_WEST', 'INCREASED_TUNDRA_HILLS_GOLD');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('INCREASED_TUNDRA_HILLS_GOLD' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_TUNDRA_HILLS_REQUIREMENTS');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('INCREASED_TUNDRA_HILLS_GOLD' , 'YieldType', 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('INCREASED_TUNDRA_HILLS_GOLD' , 'Amount', '2');
--首都送建造者
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LAST_BEST_WEST', 'BUILDER_PRESETTLEMENT');
--和平四颜--
--打蛮族加5力
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_FACES_OF_PEACE', 'TRAIT_CAESAR_BARB_COMBAT');
--打自由城市加5力
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_FACES_OF_PEACE', 'TRAIT_COMBAT_BONUS_VS_FREE_CITY_CosCanada');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_COMBAT_BONUS_VS_FREE_CITY_CosCanada' , 'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_STRENGTH', 'OPPONENT_IS_FREE_CITY_REQUIREMENTS_CosCanada');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('OPPONENT_IS_FREE_CITY_REQUIREMENTS_CosCanada' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('OPPONENT_IS_FREE_CITY_REQUIREMENTS_CosCanada' , 'OPPONENT_IS_FREE_CITY_REQUIREMENT');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_COMBAT_BONUS_VS_FREE_CITY_CosCanada' , 'Amount', '5');
INSERT INTO ModifierStrings (ModifierId, Context, Text)
	VALUES ('TRAIT_COMBAT_BONUS_VS_FREE_CITY_CosCanada','Preview','LOC_TRAIT_COMBAT_BONUS_VS_FREE_CITY_DESCRIPTION_CosCanada');
--冰球场--
--游戏与娱乐解锁
UPDATE Improvements SET PrereqCivic	='CIVIC_GAMES_RECREATION' WHERE ImprovementType='IMPROVEMENT_ICE_HOCKEY_RINK'; 
--可以建造在草原、草原丘陵、平原、平原丘陵上
INSERT INTO Improvement_ValidTerrains (ImprovementType, TerrainType)
	VALUES ('IMPROVEMENT_ICE_HOCKEY_RINK' , 'TERRAIN_PLAINS');
INSERT INTO Improvement_ValidTerrains (ImprovementType, TerrainType)
	VALUES ('IMPROVEMENT_ICE_HOCKEY_RINK' , 'TERRAIN_GRASS');
INSERT INTO Improvement_ValidTerrains (ImprovementType, TerrainType)
	VALUES ('IMPROVEMENT_ICE_HOCKEY_RINK' , 'TERRAIN_GRASS_HILLS');
INSERT INTO Improvement_ValidTerrains (ImprovementType, TerrainType)
	VALUES ('IMPROVEMENT_ICE_HOCKEY_RINK' , 'TERRAIN_PLAINS_HILLS');
--相邻冻土和雪地山脉也加文化
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentTerrain, PrereqCivic, PrereqTech)
	VALUES ('Hockey_TundraMountainAdjacency_CosCanada', 'Placeholder', 'YIELD_CULTURE', 1, 1, 'TERRAIN_TUNDRA_MOUNTAIN', NULL, NULL);
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentTerrain, PrereqCivic, PrereqTech)
	VALUES ('Hockey_SnowMountainAdjacency_CosCanada', 'Placeholder', 'YIELD_CULTURE', 1, 1, 'TERRAIN_SNOW_MOUNTAIN', NULL, NULL);
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId)
	VALUES ('IMPROVEMENT_ICE_HOCKEY_RINK' , 'Hockey_TundraMountainAdjacency_CosCanada');
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId)
	VALUES ('IMPROVEMENT_ICE_HOCKEY_RINK' , 'Hockey_SnowMountainAdjacency_CosCanada');
--基础加一粮一锤
UPDATE Improvement_YieldChanges SET YieldChange='1' WHERE ImprovementType='IMPROVEMENT_ICE_HOCKEY_RINK' AND YieldType='YIELD_PRODUCTION';
UPDATE Improvement_YieldChanges SET YieldChange='1' WHERE ImprovementType='IMPROVEMENT_ICE_HOCKEY_RINK' AND YieldType='YIELD_FOOD';
--皇家骑警殖民主义解锁
UPDATE Units SET PrereqCivic='CIVIC_COLONIALISM' WHERE UnitType='UNIT_CANADA_MOUNTIE';
--关联鹿
INSERT INTO StartBiasResources (CivilizationType, ResourceType, Tier)
	VALUES ('CIVILIZATION_CANADA', 'RESOURCE_DEER', 1);