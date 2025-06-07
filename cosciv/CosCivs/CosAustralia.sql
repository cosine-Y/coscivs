--澳大利亚
--普通单元格加一产出
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_CIVILIZATION_LAND_DOWN_UNDER', 'TRAIT_CAMPUS_CosAustralia'),
    ('TRAIT_CIVILIZATION_LAND_DOWN_UNDER',	'TRAIT_COMMERCIAL_HUB_CosAustralia'),
	('TRAIT_CIVILIZATION_LAND_DOWN_UNDER',	'TRAIT_HOLY_SITE_CosAustralia'),
	('TRAIT_CIVILIZATION_LAND_DOWN_UNDER',	'TRAIT_THEATER_DISTRICT_CosAustralia');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 	
    ('TRAIT_CAMPUS_CosAustralia', 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_APPEAL', NULL),
    ('TRAIT_COMMERCIAL_HUB_CosAustralia', 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_APPEAL', NULL),
	('TRAIT_HOLY_SITE_CosAustralia', 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_APPEAL', NULL),
	('TRAIT_THEATER_DISTRICT_CosAustralia', 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_APPEAL', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
    ('TRAIT_COMMERCIAL_HUB_CosAustralia',			'RequiredAppeal',					0),
	('TRAIT_COMMERCIAL_HUB_CosAustralia', 			'Description', 'LOC_DISTRICT_APPEAL_GOLD'),
	('TRAIT_COMMERCIAL_HUB_CosAustralia',			'DistrictType',				'DISTRICT_COMMERCIAL_HUB'),
	('TRAIT_COMMERCIAL_HUB_CosAustralia',			'YieldChange',			1),
	('TRAIT_COMMERCIAL_HUB_CosAustralia',			'YieldType',				'YIELD_GOLD'),
	('TRAIT_HOLY_SITE_CosAustralia',		'RequiredAppeal',					0),
	('TRAIT_HOLY_SITE_CosAustralia', 		'Description', 'LOC_DISTRICT_APPEAL_FAITH'),
	('TRAIT_HOLY_SITE_CosAustralia',		'DistrictType',				'DISTRICT_HOLY_SITE'),
	('TRAIT_HOLY_SITE_CosAustralia',		'YieldChange',			1),
	('TRAIT_HOLY_SITE_CosAustralia',		'YieldType',				'YIELD_FAITH'),
	('TRAIT_CAMPUS_CosAustralia',			'RequiredAppeal',					0),
	('TRAIT_CAMPUS_CosAustralia', 			'Description', 'LOC_DISTRICT_APPEAL_SCIENCE'),
	('TRAIT_CAMPUS_CosAustralia',			'DistrictType',				'DISTRICT_CAMPUS'),
	('TRAIT_CAMPUS_CosAustralia',			'YieldChange',			1),
	('TRAIT_CAMPUS_CosAustralia',			'YieldType',				'YIELD_SCIENCE'),
    ('TRAIT_THEATER_DISTRICT_CosAustralia',			'RequiredAppeal',					0),
	('TRAIT_THEATER_DISTRICT_CosAustralia', 		'Description',	 'LOC_DISTRICT_APPEAL_CULTURE'),
	('TRAIT_THEATER_DISTRICT_CosAustralia',			'DistrictType',				'DISTRICT_THEATER'),
	('TRAIT_THEATER_DISTRICT_CosAustralia',			'YieldChange',			1),
	('TRAIT_THEATER_DISTRICT_CosAustralia',			'YieldType',				'YIELD_CULTURE');
--惊艳改为额外加一
UPDATE ModifierArguments SET Value='1' WHERE ModifierId='TRAIT_BREATHTAKING_CAMPUS' and Name='YieldChange';
UPDATE ModifierArguments SET Value='1' WHERE ModifierId='TRAIT_BREATHTAKING_THEATER_DISTRICT' and Name='YieldChange';
UPDATE ModifierArguments SET Value='1' WHERE ModifierId='TRAIT_BREATHTAKING_HOLY_SITE' and Name='YieldChange';
UPDATE ModifierArguments SET Value='1' WHERE ModifierId='TRAIT_BREATHTAKING_COMMERCIAL_HUB' and Name='YieldChange';
--内陆牧场--
--技艺解锁
UPDATE Improvements SET PrereqCivic	='CIVIC_CRAFTSMANSHIP' WHERE ImprovementType='IMPROVEMENT_OUTBACK_STATION'; 
--解锁批量生产后可以建造在丘陵上
INSERT INTO Improvement_ValidTerrains (ImprovementType,	TerrainType, PrereqTech)
VALUES
	('IMPROVEMENT_OUTBACK_STATION','TERRAIN_GRASS_HILLS','TECH_MASS_PRODUCTION'),
	('IMPROVEMENT_OUTBACK_STATION',	'TERRAIN_PLAINS_HILLS',	'TECH_MASS_PRODUCTION');
--相邻加粮提前至公会
UPDATE Adjacency_YieldChanges SET PrereqCivic='CIVIC_GUILDS' WHERE ID='Outback_Outback_Food';
UPDATE Adjacency_YieldChanges SET ObsoleteCivic='CIVIC_RAPID_DEPLOYMENT' WHERE ID='Outback_Outback_Food';
--相邻加锤提前至学徒
UPDATE Adjacency_YieldChanges SET PrereqTech='TECH_APPRENTICESHIP' WHERE ID='Outback_Outback_Production'; 
UPDATE Adjacency_YieldChanges SET ObsoleteTech='TECH_STEAM_POWER' WHERE ID='Outback_Outback_Production'; 
--牧场相邻内陆牧场加锤提前至学徒
UPDATE Adjacency_YieldChanges SET PrereqTech='TECH_APPRENTICESHIP' WHERE ID='Pasture_Outback_Production'; 
--蒸汽动力、紧急部署升级
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId) VALUES
    ('IMPROVEMENT_OUTBACK_STATION', 'Outback_Outback_Production_Late'),
	('IMPROVEMENT_OUTBACK_STATION', 'Outback_Outback_Food_Late');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentTerrain, AdjacentFeature, AdjacentImprovement, AdjacentDistrict, PrereqCivic, PrereqTech, ObsoleteCivic, ObsoleteTech) VALUES
('Outback_Outback_Food_Late', 'Placeholder', 'YIELD_FOOD', 1, 1, NULL, NULL, 'IMPROVEMENT_OUTBACK_STATION', NULL, 'CIVIC_RAPID_DEPLOYMENT', NULL, NULL, NULL),
('Outback_Outback_Production_Late', 'Placeholder', 'YIELD_PRODUCTION', 1, 1, NULL, NULL, 'IMPROVEMENT_OUTBACK_STATION', NULL, NULL, 'TECH_STEAM_POWER', NULL, NULL);
--矿工军团--
--+1移动力
UPDATE Units SET BaseMoves=3 WHERE UnitType='UNIT_DIGGER';
--关联马羊
UPDATE StartBiasResources SET Tier=2 WHERE CivilizationType='CIVILIZATION_AUSTRALIA' AND ResourceType='RESOURCE_HORSES';
UPDATE StartBiasResources SET Tier=2 WHERE CivilizationType='CIVILIZATION_AUSTRALIA' AND ResourceType='RESOURCE_SHEEP'; 