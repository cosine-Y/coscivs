--印度
--贸易路线+2信仰
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_DHARMA' , 'TRAIT_INTERNATIONAL_FAITH');
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_DHARMA' , 'TRAIT_DOMESTIC_FAITH');
--来自国外的贸易路线+2信仰
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_DHARMA' , 'TRAIT_FAITH_FROM_INCOMING_TRADE_ROUTES_CosIndia');
INSERT INTO Modifiers (ModifierId , ModifierType)
	VALUES ('TRAIT_FAITH_FROM_INCOMING_TRADE_ROUTES_CosIndia', 'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_FROM_OTHERS');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('TRAIT_FAITH_FROM_INCOMING_TRADE_ROUTES_CosIndia', 'YieldType', 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('TRAIT_FAITH_FROM_INCOMING_TRADE_ROUTES_CosIndia', 'Amount', '2');
--甘地--
--信仰购买平民单位
INSERT INTO TraitModifiers (TraitType , ModifierId) VALUES 
('TRAIT_LEADER_SATYAGRAHA' , 'FAITH_PURCHASE_BUILDER_CosIndia'),
('TRAIT_LEADER_SATYAGRAHA' , 'FAITH_PURCHASE_TRADER_CosIndia'),
('TRAIT_LEADER_SATYAGRAHA' , 'FAITH_PURCHASE_SETTLER_CosIndia');
INSERT INTO Modifiers (ModifierId , ModifierType) VALUES 
('FAITH_PURCHASE_BUILDER_CosIndia' , 'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE'),
('FAITH_PURCHASE_TRADER_CosIndia' , 'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE'),
('FAITH_PURCHASE_SETTLER_CosIndia' , 'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE');
INSERT INTO ModifierArguments (ModifierId , Name , Value) VALUES 
('FAITH_PURCHASE_BUILDER_CosIndia' , 'Tag', 'CLASS_BUILDER'),
('FAITH_PURCHASE_TRADER_CosIndia' , 'Tag', 'CLASS_TRADER'),
('FAITH_PURCHASE_SETTLER_CosIndia' , 'Tag', 'CLASS_SETTLER');
--和平时每城+2信仰
INSERT INTO TraitModifiers (TraitType , ModifierId) VALUES 
('TRAIT_LEADER_SATYAGRAHA' , 'PEACE_ADDFAITH_CosIndia');
INSERT INTO Modifiers (ModifierId , ModifierType, SubjectRequirementSetId) VALUES 
('PEACE_ADDFAITH_CosIndia' , 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 'PLAYER_IS_AT_PEACE_WITH_ALL_MAJORS');
INSERT INTO ModifierArguments (ModifierId , Name , Value) VALUES 
('PEACE_ADDFAITH_CosIndia' , 'YieldType', 'YIELD_FAITH'),
('PEACE_ADDFAITH_CosIndia' , 'Amount', '2');
--被宣战10回合+50%信仰
INSERT INTO TraitModifiers (TraitType , ModifierId) VALUES 
('TRAIT_LEADER_SATYAGRAHA' , 'TRAIT_DEFENSIVE_FAITH_CosIndia');
INSERT INTO Modifiers (ModifierId , ModifierType)
	VALUES ('TRAIT_DEFENSIVE_FAITH_CosIndia', 'MODIFIER_PLAYER_ADD_DIPLOMATIC_YIELD_MODIFIER');
INSERT INTO ModifierArguments (ModifierId , Name , Value) VALUES 
('TRAIT_DEFENSIVE_FAITH_CosIndia' , 'DiplomaticYieldSource', 'WAR_DECLARATION_RECEIVED'),
('TRAIT_DEFENSIVE_FAITH_CosIndia' , 'TurnsActive', '10'),
('TRAIT_DEFENSIVE_FAITH_CosIndia' , 'YieldType', 'YIELD_FAITH'),
('TRAIT_DEFENSIVE_FAITH_CosIndia' , 'Amount', '50');
--旃陀罗笈多--
--市政文化炸弹
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_LEADER_ARTHASHASTRA' , 'TRAIT_GOVERNMENT_CULTURE_BOMB_CosIndia');
INSERT INTO Modifiers (ModifierId , ModifierType)
	VALUES ('TRAIT_GOVERNMENT_CULTURE_BOMB_CosIndia', 'MODIFIER_PLAYER_ADD_CULTURE_BOMB_TRIGGER');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('TRAIT_GOVERNMENT_CULTURE_BOMB_CosIndia', 'DistrictType', 'DISTRICT_GOVERNMENT');
--有市政广场城市造单位加速50%
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_ARTHASHASTRA', 'TRAIT_GOVERNMENT_UNIT_PRODUCTION_CosIndia');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES ('TRAIT_GOVERNMENT_UNIT_PRODUCTION_CosIndia', 'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_PRODUCTION_MODIFIER','CITY_HAS_GOV_DISTRICT');
INSERT INTO ModifierArguments (ModifierId, Name ,Value)
	VALUES ('TRAIT_GOVERNMENT_UNIT_PRODUCTION_CosIndia', 'Amount','50');
--圣地给重骑
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_LEADER_ARTHASHASTRA' , 'HOLY_SITE_HEAVY_CAVALRY_CosIndia');
INSERT INTO Modifiers (ModifierId , ModifierType, SubjectRequirementSetId)
	VALUES ('HOLY_SITE_HEAVY_CAVALRY_CosIndia', 'MODIFIER_PLAYER_CITIES_GRANT_UNIT_BY_CLASS', 'CITY_HAS_HOLY_SITE');
INSERT INTO ModifierArguments (ModifierId , Name , Value) VALUES
('HOLY_SITE_HEAVY_CAVALRY_CosIndia', 'UnitPromotionClassType', 'PROMOTION_CLASS_HEAVY_CAVALRY');
/* --有圣地城市造单位加速40%
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_ARTHASHASTRA', 'TRAIT_HOLY_SITE_UNIT_PRODUCTION_CosIndia');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES ('TRAIT_HOLY_SITE_UNIT_PRODUCTION_CosIndia', 'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_PRODUCTION_MODIFIER','CITY_HAS_HOLY_SITE');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('CITY_HAS_HOLY_SITE_REQUIREMENTS_CosIndia' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('CITY_HAS_HOLY_SITE_REQUIREMENTS_CosIndia' , 'REQUIREMENT_CITY_HAS_HOLY_SITE_CosIndia');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIREMENT_CITY_HAS_HOLY_SITE_CosIndia' , 'REQUIREMENT_CITY_HAS_DISTRICT');
INSERT INTO RequirementArguments (RequirementId, Name, Value)
	VALUES ('REQUIREMENT_CITY_HAS_HOLY_SITE_CosIndia' , 'DistrictType' , 'DISTRICT_HOLY_SITE'); 
INSERT INTO ModifierArguments (ModifierId, Name ,Value)
	VALUES ('TRAIT_HOLY_SITE_UNIT_PRODUCTION_CosIndia', 'Amount','40'); */
--梯井--
--每与一个圣地相邻+1生产力
INSERT INTO Improvement_YieldChanges (ImprovementType, YieldType, YieldChange) VALUES
    ('IMPROVEMENT_STEPWELL', 'YIELD_PRODUCTION', 0);
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId) VALUES
    ('IMPROVEMENT_STEPWELL', 'STEPWELL_HOLY_SITE_PRODUCTION_CosIndia'),
	('IMPROVEMENT_STEPWELL', 'STEPWELL_LAVRA_PRODUCTION_CosIndia');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentTerrain, AdjacentFeature, AdjacentImprovement, AdjacentDistrict, PrereqCivic, PrereqTech, ObsoleteCivic, ObsoleteTech) VALUES
('STEPWELL_HOLY_SITE_PRODUCTION_CosIndia', 'Placeholder', 'YIELD_PRODUCTION', 1, 1, NULL, NULL, NULL, 'DISTRICT_HOLY_SITE', NULL, NULL, NULL, NULL),
('STEPWELL_LAVRA_PRODUCTION_CosIndia', 'Placeholder', 'YIELD_PRODUCTION', 1, 1, NULL, NULL, NULL, 'DISTRICT_LAVRA', NULL, NULL, NULL, NULL);
--每与一个圣地相邻+2信仰
DELETE FROM ImprovementModifiers WHERE ImprovementType='IMPROVEMENT_STEPWELL' AND ModifierID='STEPWELL_HOLYSITEADJACENCY_FAITH';
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId) VALUES
    ('IMPROVEMENT_STEPWELL', 'STEPWELL_HOLY_SITE_FAITH_Early_CosIndia'),
	('IMPROVEMENT_STEPWELL', 'STEPWELL_LAVRA_FAITH_Early_CosIndia');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentTerrain, AdjacentFeature, AdjacentImprovement, AdjacentDistrict, PrereqCivic, PrereqTech, ObsoleteCivic, ObsoleteTech) VALUES
('STEPWELL_HOLY_SITE_FAITH_Early_CosIndia', 'Placeholder', 'YIELD_FAITH', 2, 1, NULL, NULL, NULL, 'DISTRICT_HOLY_SITE', NULL, NULL, 'CIVIC_DIVINE_RIGHT', NULL),
('STEPWELL_LAVRA_FAITH_Early_CosIndia', 'Placeholder', 'YIELD_FAITH', 2, 1, NULL, NULL, NULL, 'DISTRICT_LAVRA', NULL, NULL, 'CIVIC_DIVINE_RIGHT', NULL);
--每与一个农场相邻+1食物
DELETE FROM ImprovementModifiers WHERE ImprovementType='IMPROVEMENT_STEPWELL' AND ModifierID='STEPWELL_FARMADJACENCY_FOOD';
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId) VALUES
	('IMPROVEMENT_STEPWELL', 'STEPWELL_FARM_FOOD_CosIndia');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentTerrain, AdjacentFeature, AdjacentImprovement, AdjacentDistrict, PrereqCivic, PrereqTech, ObsoleteCivic, ObsoleteTech) VALUES
('STEPWELL_FARM_FOOD_CosIndia', 'Placeholder', 'YIELD_FOOD', 1, 1, NULL, NULL, 'IMPROVEMENT_FARM', NULL, NULL, NULL, NULL, NULL);
--加食物改为封建
UPDATE Improvement_BonusYieldChanges SET PrereqCivic='CIVIC_FEUDALISM' WHERE ImprovementType='IMPROVEMENT_STEPWELL' AND PrereqCivic='CIVIC_PROFESSIONAL_SPORTS'; 
--王权神授后每与一个圣地相邻+4信仰
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId) VALUES
    ('IMPROVEMENT_STEPWELL', 'STEPWELL_HOLY_SITE_FAITH_Late_CosIndia'),
	('IMPROVEMENT_STEPWELL', 'STEPWELL_LAVRA_FAITH_Late_CosIndia');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentTerrain, AdjacentFeature, AdjacentImprovement, AdjacentDistrict, PrereqCivic, PrereqTech, ObsoleteCivic, ObsoleteTech) VALUES
('STEPWELL_HOLY_SITE_FAITH_Late_CosIndia', 'Placeholder', 'YIELD_FAITH', 4, 1, NULL, NULL, NULL, 'DISTRICT_HOLY_SITE', 'CIVIC_DIVINE_RIGHT', NULL, NULL, NULL),
('STEPWELL_LAVRA_FAITH_Late_CosIndia', 'Placeholder', 'YIELD_FAITH', 4, 1, NULL, NULL, NULL, 'DISTRICT_LAVRA', 'CIVIC_DIVINE_RIGHT', NULL, NULL, NULL);
--可以建造在泛滥平原上
INSERT INTO Improvement_ValidFeatures (ImprovementType, FeatureType) VALUES
    ('IMPROVEMENT_STEPWELL', 'FEATURE_FLOODPLAINS'),
	('IMPROVEMENT_STEPWELL', 'FEATURE_FLOODPLAINS_PLAINS'),
	('IMPROVEMENT_STEPWELL', 'FEATURE_FLOODPLAINS_GRASSLAND');
--土木工程后丘陵上
INSERT INTO Improvement_ValidTerrains (ImprovementType,	TerrainType, PrereqCivic) VALUES
('IMPROVEMENT_STEPWELL','TERRAIN_GRASS_HILLS','CIVIC_CIVIL_ENGINEERING'),
('IMPROVEMENT_STEPWELL','TERRAIN_PLAINS_HILLS',	'CIVIC_CIVIL_ENGINEERING'),
('IMPROVEMENT_STEPWELL','TERRAIN_DESERT_HILLS','CIVIC_CIVIL_ENGINEERING'),
('IMPROVEMENT_STEPWELL','TERRAIN_TUNDRA_HILLS',	'CIVIC_CIVIL_ENGINEERING'),
('IMPROVEMENT_STEPWELL','TERRAIN_SNOW_HILLS','CIVIC_CIVIL_ENGINEERING');
--战象--
--造价降低
UPDATE Units SET Cost=105 WHERE UnitType='UNIT_INDIAN_VARU';
--移速增加
UPDATE Units SET BaseMoves=3 WHERE UnitType='UNIT_INDIAN_VARU';