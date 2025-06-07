--努比亚
--初始解锁箭术尤里卡
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_TA_SETI', 'TRAIT_FREE_TECH_BOOST_ARCHERY_CosNubia');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId)
	VALUES 	('TRAIT_FREE_TECH_BOOST_ARCHERY_CosNubia' , 'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST', 1, 1, NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_FREE_TECH_BOOST_ARCHERY_CosNubia', 'TechType', 'TECH_ARCHERY');
--阿曼妮托尔--
--有相邻加50%
UPDATE ModifierArguments SET Value ='30' WHERE ModifierId='TRAIT_PYRAMID_DISTRICT_PRODUCTION_MODIFIER';
--努比亚金字塔--
--相邻市中心+1锤
UPDATE Adjacency_YieldChanges SET YieldType ='YIELD_PRODUCTION' WHERE ID='Pyramid_CityCenterAdjacency';
--相邻商业中心+2金币
UPDATE Adjacency_YieldChanges SET YieldChange =2 WHERE ID='Pyramid_CommercialHubAdjacency';
--相邻港口+2金币
UPDATE Adjacency_YieldChanges SET YieldChange =2 WHERE ID='Pyramid_HarborAdjacency';
--相邻市政广场、外交区+1文化
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId) VALUES
    ('IMPROVEMENT_PYRAMID', 'Pyramid_GovernmentAdjacency_CosNubia'),
	('IMPROVEMENT_PYRAMID', 'Pyramid_DiplomaticAdjacency_CosNubia');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentTerrain, AdjacentFeature, AdjacentImprovement, AdjacentDistrict) VALUES
('Pyramid_GovernmentAdjacency_CosNubia', 'Placeholder', 'YIELD_CULTURE', 1, 1, NULL, NULL, NULL, 'DISTRICT_GOVERNMENT'),
('Pyramid_DiplomaticAdjacency_CosNubia', 'Placeholder', 'YIELD_CULTURE', 1, 1, NULL, NULL, NULL, 'DISTRICT_DIPLOMATIC_QUARTER');
--可以建在草原、平原、草原丘陵、平原丘陵、冻土、冻土丘陵、雪地、雪地丘陵、草原泛滥、平原泛滥上
INSERT INTO Improvement_ValidTerrains (ImprovementType, TerrainType) VALUES 
('IMPROVEMENT_PYRAMID' , 'TERRAIN_PLAINS'),
('IMPROVEMENT_PYRAMID' , 'TERRAIN_GRASS'),
('IMPROVEMENT_PYRAMID' , 'TERRAIN_GRASS_HILLS'),
('IMPROVEMENT_PYRAMID' , 'TERRAIN_PLAINS_HILLS'),
('IMPROVEMENT_PYRAMID' , 'TERRAIN_TUNDRA'),
('IMPROVEMENT_PYRAMID' , 'TERRAIN_SNOW'),
('IMPROVEMENT_PYRAMID' , 'TERRAIN_TUNDRA_HILLS'),
('IMPROVEMENT_PYRAMID' , 'TERRAIN_SNOW_HILLS');
INSERT INTO Improvement_ValidFeatures (ImprovementType, FeatureType) VALUES
	('IMPROVEMENT_PYRAMID', 'FEATURE_FLOODPLAINS_PLAINS'),
	('IMPROVEMENT_PYRAMID', 'FEATURE_FLOODPLAINS_GRASSLAND');
--关联采石场资源
INSERT INTO StartBiasResources (CivilizationType, ResourceType, Tier)
	VALUES ('CIVILIZATION_NUBIA', 'RESOURCE_STONE', 5);
INSERT INTO StartBiasResources (CivilizationType, ResourceType, Tier)
	VALUES ('CIVILIZATION_NUBIA', 'RESOURCE_MARBLE', 5);
INSERT INTO StartBiasResources (CivilizationType, ResourceType, Tier)
	VALUES ('CIVILIZATION_NUBIA', 'RESOURCE_GYPSUM', 4);
--取消沙漠关联
DELETE FROM StartBiasTerrains WHERE CivilizationType='CIVILIZATION_NUBIA' AND TerrainType='TERRAIN_DESERT';
DELETE FROM StartBiasTerrains WHERE CivilizationType='CIVILIZATION_NUBIA' AND TerrainType='TERRAIN_DESERT_HILLS';