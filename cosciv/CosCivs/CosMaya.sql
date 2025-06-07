--玛雅
--农场加一锤
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_MAYAB', 'FARM_PRODUCTION_CosMaya');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('FARM_PRODUCTION_CosMaya' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_FARM_REQUIREMENTS_CosMaya');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('FARM_PRODUCTION_CosMaya', 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('FARM_PRODUCTION_CosMaya', 'Amount', '1');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_FARM_REQUIREMENTS_CosMaya' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_FARM_REQUIREMENTS_CosMaya' , 'REQUIRES_PLOT_HAS_FARM');
--初始解锁灌溉尤里卡
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_MAYAB', 'TRAIT_FREE_TECH_BOOST_IRRIGATION_CosMaya');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId)
	VALUES 	('TRAIT_FREE_TECH_BOOST_IRRIGATION_CosMaya' , 'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST', 1, 1, NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_FREE_TECH_BOOST_IRRIGATION_CosMaya', 'TechType', 'TECH_IRRIGATION');
--种植园触发文化炸弹
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_MAYAB' , 'TRAIT_CULTURE_BOMB_TRIGGER_PLANTATION_CosMaya');
INSERT INTO Modifiers (ModifierId, ModifierType)
	VALUES ('TRAIT_CULTURE_BOMB_TRIGGER_PLANTATION_CosMaya', 'MODIFIER_PLAYER_ADD_CULTURE_BOMB_TRIGGER');
INSERT INTO ModifierArguments (ModifierId, Name ,Value)
	VALUES ('TRAIT_CULTURE_BOMB_TRIGGER_PLANTATION_CosMaya', 'ImprovementType','IMPROVEMENT_PLANTATION');
--六日夫人--
--首都享受加成
UPDATE RequirementArguments SET Value ='0' WHERE RequirementId='REQUIRES_OBJECT_6_TILES_FROM_CAPITAL_NOT_CAPITAL' AND Name='MinDistance';
--取消关联冻土、沙漠、雪地
DELETE FROM StartBiasTerrains WHERE CivilizationType='CIVILIZATION_MAYA' AND TerrainType='TERRAIN_DESERT';
DELETE FROM StartBiasTerrains WHERE CivilizationType='CIVILIZATION_MAYA' AND TerrainType='TERRAIN_SNOW';
DELETE FROM StartBiasTerrains WHERE CivilizationType='CIVILIZATION_MAYA' AND TerrainType='TERRAIN_TUNDRA';
DELETE FROM StartBiasTerrains WHERE CivilizationType='CIVILIZATION_MAYA' AND TerrainType='TERRAIN_DESERT_HILLS';
DELETE FROM StartBiasTerrains WHERE CivilizationType='CIVILIZATION_MAYA' AND TerrainType='TERRAIN_SNOW_HILLS';
DELETE FROM StartBiasTerrains WHERE CivilizationType='CIVILIZATION_MAYA' AND TerrainType='TERRAIN_TUNDRA_HILLS';
DELETE FROM StartBiasTerrains WHERE CivilizationType='CIVILIZATION_MAYA' AND TerrainType='TERRAIN_SNOW_MOUNTAIN';
DELETE FROM StartBiasTerrains WHERE CivilizationType='CIVILIZATION_MAYA' AND TerrainType='TERRAIN_DESERT_MOUNTAIN';
DELETE FROM StartBiasTerrains WHERE CivilizationType='CIVILIZATION_MAYA' AND TerrainType='TERRAIN_TUNDRA_MOUNTAIN';
--天文台--
--恢复山脉相邻加成
INSERT INTO District_Adjacencies (DistrictType, YieldChangeId) 
    VALUES ('DISTRICT_OBSERVATORY', 'Mountains_Science1');
INSERT INTO District_Adjacencies (DistrictType, YieldChangeId) 
    VALUES ('DISTRICT_OBSERVATORY', 'Mountains_Science2');
INSERT INTO District_Adjacencies (DistrictType, YieldChangeId) 
    VALUES ('DISTRICT_OBSERVATORY', 'Mountains_Science3');
INSERT INTO District_Adjacencies (DistrictType, YieldChangeId) 
    VALUES ('DISTRICT_OBSERVATORY', 'Mountains_Science4');
INSERT INTO District_Adjacencies (DistrictType, YieldChangeId) 
    VALUES ('DISTRICT_OBSERVATORY', 'Mountains_Science5');
