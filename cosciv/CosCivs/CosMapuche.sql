--马普切
--两倍
UPDATE ModifierArguments SET Value='10' WHERE ModifierId='TOQUI_CULTURE_FROM_GOVERNOR' AND Name='Amount';
UPDATE ModifierArguments SET Value='20' WHERE ModifierId='TOQUI_CULTURE_GOVERNOR_NOT_FOUNDED' AND Name='Amount';
UPDATE ModifierArguments SET Value='10' WHERE ModifierId='TOQUI_PRODUCTION_FROM_GOVERNOR' AND Name='Amount';
UPDATE ModifierArguments SET Value='20' WHERE ModifierId='TOQUI_PRODUCTION_GOVERNOR_NOT_FOUNDED' AND Name='Amount';
--经验+50%
UPDATE ModifierArguments SET Value='50' WHERE ModifierId='TOQUI_GOVERNOR_UNIT_EXPERIENCE';
UPDATE ModifierArguments SET Value='100' WHERE ModifierId='TOQUI_GOVERNOR_UNIT_EXPERIENCE_NOT_FOUNDED';
--莱夫扎茹--
DELETE FROM TraitModifiers WHERE TraitType='TRAIT_LEADER_LAUTARO_ABILITY' AND ModifierId='TRAIT_TOQUI_COMBAT_BONUS_VS_GOLDEN_AGE_CIV';
--打黄金+3力
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LAUTARO_ABILITY', 'TRAIT_COMBAT_BONUS_VS_GOLDEN_AGE_CIV_CosMapuche');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_COMBAT_BONUS_VS_GOLDEN_AGE_CIV_CosMapuche' , 'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_STRENGTH', 'OPPONENT_IS_GOLDEN_AGE_CIV_REQUIREMENTS_CosMapuche');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('OPPONENT_IS_GOLDEN_AGE_CIV_REQUIREMENTS_CosMapuche' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('OPPONENT_IS_GOLDEN_AGE_CIV_REQUIREMENTS_CosMapuche' , 'OPPONENT_IS_IN_GOLDEN_AGE_REQUIREMENT');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_COMBAT_BONUS_VS_GOLDEN_AGE_CIV_CosMapuche' , 'Amount', '3');
INSERT INTO ModifierStrings (ModifierId, Context, Text)
	VALUES ('TRAIT_COMBAT_BONUS_VS_GOLDEN_AGE_CIV_CosMapuche','Preview','LOC_TRAIT_COMBAT_BONUS_VS_GOLDEN_AGE_CIV_DESCRIPTION_CosMapuche');
--打自由城市加10力
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LAUTARO_ABILITY', 'TRAIT_COMBAT_BONUS_VS_FREE_CITY_CosMapuche');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_COMBAT_BONUS_VS_FREE_CITY_CosMapuche' , 'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_STRENGTH', 'OPPONENT_IS_FREE_CITY_REQUIREMENTS_CosCanada');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_COMBAT_BONUS_VS_FREE_CITY_CosMapuche' , 'Amount', '10');
INSERT INTO ModifierStrings (ModifierId, Context, Text)
	VALUES ('TRAIT_COMBAT_BONUS_VS_FREE_CITY_CosMapuche','Preview','LOC_TRAIT_COMBAT_BONUS_VS_FREE_CITY_DESCRIPTION_CosMapuche');
--木人--
--可以建在树林上
INSERT INTO Improvement_ValidFeatures (ImprovementType, FeatureType) VALUES
    ('IMPROVEMENT_CHEMAMULL', 'FEATURE_FOREST');
--+1魅力
UPDATE Improvements SET Appeal=1 WHERE ImprovementType='IMPROVEMENT_CHEMAMULL'; 
--魅力不小于0
UPDATE Improvements SET MinimumAppeal=0 WHERE ImprovementType='IMPROVEMENT_CHEMAMULL';
--每相邻一个山脉+1信仰
INSERT INTO Improvement_YieldChanges (ImprovementType, YieldType, YieldChange) VALUES
('IMPROVEMENT_CHEMAMULL', 'YIELD_FAITH', 0);
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId) VALUES
('IMPROVEMENT_CHEMAMULL', 'Mountain_Faith1'),
('IMPROVEMENT_CHEMAMULL', 'Mountain_Faith2'),
('IMPROVEMENT_CHEMAMULL', 'Mountain_Faith3'),
('IMPROVEMENT_CHEMAMULL', 'Mountain_Faith4'),
('IMPROVEMENT_CHEMAMULL', 'Mountain_Faith5');
--树林三级关联
INSERT INTO StartBiasFeatures (CivilizationType, FeatureType, Tier)
	VALUES ('CIVILIZATION_MAPUCHE', 'FEATURE_FOREST', 3);
--山脉二级关联
UPDATE StartBiasTerrains SET Tier=2 WHERE TerrainType='TERRAIN_GRASS_MOUNTAIN' AND CivilizationType='CIVILIZATION_MAPUCHE';
UPDATE StartBiasTerrains SET Tier=2 WHERE TerrainType='TERRAIN_PLAINS_MOUNTAIN' AND CivilizationType='CIVILIZATION_MAPUCHE';