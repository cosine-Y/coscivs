--荷兰
--建造堤坝、拦洪坝加速200%
UPDATE ModifierArguments SET Value ='200' WHERE ModifierId='TRAIT_FLOOD_BARRIER_PRODUCTION' AND Name='Amount';
UPDATE ModifierArguments SET Value ='200' WHERE ModifierId='TRAIT_DAM_PRODUCTION_PRODUCTION' AND Name='Amount';
--圩田为市中心提供+2生产力相邻加成
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_GROTE_RIVIEREN', 'TRAIT_POLDER_CITY_CENTER_PRODUCTION_CosNetherlands');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_POLDER_CITY_CENTER_PRODUCTION_CosNetherlands' , 'MODIFIER_PLAYER_CITIES_IMPROVEMENT_ADJACENCY', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_POLDER_CITY_CENTER_PRODUCTION_CosNetherlands' , 'Description', 'LOC_POLDER_PRODUCTION_CosNetherlands');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_POLDER_CITY_CENTER_PRODUCTION_CosNetherlands' , 'DistrictType', 'DISTRICT_CITY_CENTER');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_POLDER_CITY_CENTER_PRODUCTION_CosNetherlands' , 'ImprovementType', 'IMPROVEMENT_POLDER');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_POLDER_CITY_CENTER_PRODUCTION_CosNetherlands' , 'TilesRequired', 1);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_POLDER_CITY_CENTER_PRODUCTION_CosNetherlands' , 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_POLDER_CITY_CENTER_PRODUCTION_CosNetherlands' , 'Amount', 2);
--圩田为港口提供+2生产力相邻加成
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_GROTE_RIVIEREN', 'TRAIT_POLDER_HARBOR_PRODUCTION_CosNetherlands');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_POLDER_HARBOR_PRODUCTION_CosNetherlands' , 'MODIFIER_PLAYER_CITIES_IMPROVEMENT_ADJACENCY', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_POLDER_HARBOR_PRODUCTION_CosNetherlands' , 'Description', 'LOC_POLDER_PRODUCTION_CosNetherlands');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_POLDER_HARBOR_PRODUCTION_CosNetherlands' , 'DistrictType', 'DISTRICT_HARBOR');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_POLDER_HARBOR_PRODUCTION_CosNetherlands' , 'ImprovementType', 'IMPROVEMENT_POLDER');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_POLDER_HARBOR_PRODUCTION_CosNetherlands' , 'TilesRequired', 1);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_POLDER_HARBOR_PRODUCTION_CosNetherlands' , 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_POLDER_HARBOR_PRODUCTION_CosNetherlands' , 'Amount', 2);
--威廉明娜
--市场+2文化
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_RADIO_ORANJE' , 'TRAIT_MARKET_CULTURE_CosNetherlands');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_MARKET_CULTURE_CosNetherlands' , 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_MARKET_CULTURE_CosNetherlands' , 'BuildingType', 'BUILDING_MARKET');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_MARKET_CULTURE_CosNetherlands' , 'YieldType', 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_MARKET_CULTURE_CosNetherlands' , 'Amount', '2');
--灯塔+2文化
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_RADIO_ORANJE' , 'TRAIT_LIGHTHOUSE_CULTURE_CosNetherlands');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_LIGHTHOUSE_CULTURE_CosNetherlands' , 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_LIGHTHOUSE_CULTURE_CosNetherlands' , 'BuildingType', 'BUILDING_LIGHTHOUSE');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_LIGHTHOUSE_CULTURE_CosNetherlands' , 'YieldType', 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_LIGHTHOUSE_CULTURE_CosNetherlands' , 'Amount', '2');
--圩田--
--技艺解锁
UPDATE Improvements SET PrereqCivic='CIVIC_CRAFTSMANSHIP' WHERE ImprovementType='IMPROVEMENT_POLDER'; 
--条件为相邻至少两个陆地
UPDATE Improvements SET ValidAdjacentTerrainAmount=2 WHERE ImprovementType='IMPROVEMENT_POLDER'; 
INSERT INTO Improvement_ValidAdjacentTerrains (ImprovementType, TerrainType)
VALUES
	('IMPROVEMENT_POLDER','TERRAIN_DESERT_MOUNTAIN'),
	('IMPROVEMENT_POLDER','TERRAIN_TUNDRA_MOUNTAIN'),
	('IMPROVEMENT_POLDER','TERRAIN_SNOW_MOUNTAIN'),
	('IMPROVEMENT_POLDER','TERRAIN_GRASS_MOUNTAIN'),
	('IMPROVEMENT_POLDER','TERRAIN_PLAINS_MOUNTAIN');
--移动力+1
UPDATE Improvements SET MovementChange=1 WHERE ImprovementType='IMPROVEMENT_POLDER'; 
--加金币提前至公会
UPDATE Improvement_BonusYieldChanges SET PrereqCivic='CIVIC_GUILDS' WHERE ImprovementType='IMPROVEMENT_POLDER'; 
--相邻加成提前至封建主义
UPDATE Adjacency_YieldChanges SET ObsoleteCivic='CIVIC_FEUDALISM' WHERE ID='Polder_Polder_Food_Early'; 
UPDATE Adjacency_YieldChanges SET ObsoleteTech=NULL WHERE ID='Polder_Polder_Food_Early'; 
UPDATE Adjacency_YieldChanges SET PrereqCivic='CIVIC_FEUDALISM' WHERE ID='Polder_Polder_Food_Late'; 
UPDATE Adjacency_YieldChanges SET PrereqTech=NULL WHERE ID='Polder_Polder_Food_Late';
UPDATE Adjacency_YieldChanges SET PrereqCivic='CIVIC_FEUDALISM' WHERE ID='Polder_Polder_Production'; 
UPDATE Adjacency_YieldChanges SET PrereqTech=NULL WHERE ID='Polder_Polder_Production';
--相邻圩田+2锤
UPDATE Adjacency_YieldChanges SET YieldChange=2 WHERE ID='Polder_Polder_Production';
--可以建造在礁石上
INSERT INTO Improvement_ValidFeatures (ImprovementType,	FeatureType)
VALUES
	('IMPROVEMENT_POLDER','FEATURE_REEF');
--可以建造在海洋资源上
INSERT INTO Improvement_ValidResources (ImprovementType, ResourceType, MustRemoveFeature)
VALUES
	('IMPROVEMENT_POLDER','RESOURCE_CRABS',0),
	('IMPROVEMENT_POLDER','RESOURCE_FISH',0),
	('IMPROVEMENT_POLDER','RESOURCE_PEARLS',0),
	('IMPROVEMENT_POLDER','RESOURCE_WHALES',0),
	('IMPROVEMENT_POLDER','RESOURCE_TURTLES',0),
	('IMPROVEMENT_POLDER','RESOURCE_AMBER',0),
	('IMPROVEMENT_POLDER','RESOURCE_OIL',0);

