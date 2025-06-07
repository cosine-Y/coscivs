--地脉基础产出增加
INSERT INTO Resource_YieldChanges(ResourceType,YieldType,YieldChange)
    VALUES('RESOURCE_LEY_LINE','YIELD_SCIENCE',1);
INSERT INTO Resource_YieldChanges(ResourceType,YieldType,YieldChange)
    VALUES('RESOURCE_LEY_LINE','YIELD_FOOD',1);
INSERT INTO Resource_YieldChanges(ResourceType,YieldType,YieldChange)
    VALUES('RESOURCE_LEY_LINE','YIELD_PRODUCTION',1);
INSERT INTO Resource_YieldChanges(ResourceType,YieldType,YieldChange)
    VALUES('RESOURCE_LEY_LINE','YIELD_GOLD',1);
--地脉分布
UPDATE Resources SET Frequency=20 WHERE ResourceType='RESOURCE_LEY_LINE';--数量
-- UPDATE Resources SET Clumped=1 WHERE ResourceType='RESOURCE_LEY_LINE';--聚集（不生效）
UPDATE Resources SET SeaFrequency=1, AdjacentToLand=1 WHERE ResourceType='RESOURCE_LEY_LINE'; 
-- INSERT INTO Resource_ValidTerrains (ResourceType, TerrainType) VALUES
-- ('RESOURCE_LEY_LINE' , 'TERRAIN_COAST'); 
INSERT INTO Resource_ValidFeatures (ResourceType, FeatureType) VALUES
('RESOURCE_LEY_LINE' , 'FEATURE_REEF'); --礁石地脉
-- INSERT INTO Resource_ValidTerrains (ResourceType, TerrainType) VALUES
-- ('RESOURCE_LEY_LINE' , 'TERRAIN_GRASS_MOUNTAIN'),
-- ('RESOURCE_LEY_LINE' , 'TERRAIN_PLAINS_MOUNTAIN');--山脉地脉
INSERT INTO Resource_ValidFeatures (ResourceType, FeatureType) VALUES
('RESOURCE_LEY_LINE' , 'FEATURE_FOREST'),
('RESOURCE_LEY_LINE' , 'FEATURE_JUNGLE'),
('RESOURCE_LEY_LINE' , 'FEATURE_MARSH'),
('RESOURCE_LEY_LINE' , 'FEATURE_FLOODPLAINS_GRASSLAND'),
('RESOURCE_LEY_LINE' , 'FEATURE_FLOODPLAINS_PLAINS');--树林雨林泛滥沼泽

--给书院地脉的相邻加成
INSERT INTO District_Adjacencies (DistrictType, YieldChangeId)
	VALUES ('DISTRICT_SEOWON', 'LeyLine_Science');
--城池地脉相邻加成
INSERT INTO District_Adjacencies (DistrictType, YieldChangeId)
	VALUES ('DISTRICT_THANH', 'LeyLine_Culture');
--伊坎达地脉
INSERT INTO District_Adjacencies (DistrictType, YieldChangeId) VALUES
('DISTRICT_IKANDA' , 'LeyLine_Production');
--大商人为三级地脉提供2金币
UPDATE ModifierArguments SET Value='2' WHERE ModifierId='HERMETIC_ORDER_GREAT_MERCHANT_LEY_LINE_GOLD' and Name='Amount';
--炼金术大学和镀金宝库不需要在科技树上解锁原建筑，同时造价减少
UPDATE Buildings SET Cost = 200 ,PrereqTech = NULL  WHERE BuildingType='BUILDING_ALCHEMICAL_SOCIETY'; --减少50锤
UPDATE Buildings SET Cost = 170 ,PrereqTech = NULL  WHERE BuildingType='BUILDING_GILDED_VAULT'; --减少120锤
--镀金宝库产出金币增加
UPDATE Building_YieldChanges SET YieldChange = 8 WHERE BuildingType='BUILDING_GILDED_VAULT' and YieldType='YIELD_GOLD';
--邪教徒提升至4速
UPDATE Units SET BaseMoves=4 WHERE UnitType = 'UNIT_CULTIST';
--邪教徒改为1次
UPDATE Units_MODE SET ActionCharges=1 WHERE UnitType = 'UNIT_CULTIST';
--邪教徒不能进别国
UPDATE UnitAbilityModifiers SET ModifierId='MOD_ENTER_FOREIGN_LANDS_HUMAN_Cos' WHERE UnitAbilityType='ABILITY_CULTIST_ENTER_FOREIGN_LANDS';
INSERT INTO Modifiers (ModifierId , ModifierType ,OwnerRequirementSetId) VALUES
('MOD_ENTER_FOREIGN_LANDS_HUMAN_Cos', 'MODIFIER_PLAYER_UNIT_ADJUST_ENTER_FOREIGN_LANDS', 'PLAYER_IS_HUMAN');
--邪教徒降忠诚变多
UPDATE ModifierArguments SET Value='25' WHERE ModifierId='SPREAD_DISSENT_LOYALTY_DAMAGE' and Name='Amount';
UPDATE ModifierArguments SET Value='5' WHERE ModifierId='SPREAD_CHAOS_ADDITIONAL_LOYALTY_DAMAGE' and Name='Amount';
--吸血鬼提升至3速
UPDATE Units SET BaseMoves=3 WHERE UnitType = 'UNIT_VAMPIRE';
--吸血鬼可以修路
INSERT INTO Route_ValidBuildUnits (RouteType , UnitType) VALUES
('ROUTE_ANCIENT_ROAD' , 'UNIT_VAMPIRE'),
('ROUTE_MEDIEVAL_ROAD' , 'UNIT_VAMPIRE'),
('ROUTE_INDUSTRIAL_ROAD' , 'UNIT_VAMPIRE'),
('ROUTE_MODERN_ROAD' , 'UNIT_VAMPIRE'),
('ROUTE_RAILROAD' , 'UNIT_VAMPIRE');
--吸血鬼城堡可以建在泛滥上
INSERT INTO Improvement_ValidFeatures (ImprovementType, FeatureType) VALUES
    ('IMPROVEMENT_VAMPIRE_CASTLE', 'FEATURE_FLOODPLAINS'),
	('IMPROVEMENT_VAMPIRE_CASTLE', 'FEATURE_FLOODPLAINS_PLAINS'),
	('IMPROVEMENT_VAMPIRE_CASTLE', 'FEATURE_FLOODPLAINS_GRASSLAND');
/* --一级吸血鬼1个城堡
INSERT INTO GovernorPromotionModifiers (GovernorPromotionType, ModifierId) VALUES
('GOVERNOR_PROMOTION_SANGUINE_PACT_1', 'SECRET_SOCIETY_GRANT_ONE_VAMPIRE_BUILD'); */
--结社触发概率提高
UPDATE SecretSocieties SET DiscoverAtBarbarianCampBaseChance=100 WHERE SecretSocietyType='SECRETSOCIETY_SANGUINE_PACT';
UPDATE SecretSocieties SET DiscoverAtCityStateBaseChance=100 WHERE SecretSocietyType='SECRETSOCIETY_OWLS_OF_MINERVA';
UPDATE SecretSocieties SET DiscoverAtGoodyHutBaseChance=100 WHERE SecretSocietyType='SECRETSOCIETY_VOIDSINGERS';
--二级结社提前至古典，三级结社提前至中世纪，四级结社提前至工业时代
UPDATE GovernorPromotionConditions SET EarliestGameEra="ERA_CLASSICAL" WHERE GovernorPromotionType='GOVERNOR_PROMOTION_HERMETIC_ORDER_2';
UPDATE GovernorPromotionConditions SET EarliestGameEra="ERA_CLASSICAL" WHERE GovernorPromotionType='GOVERNOR_PROMOTION_OWLS_OF_MINERVA_2';
UPDATE GovernorPromotionConditions SET EarliestGameEra="ERA_CLASSICAL" WHERE GovernorPromotionType='GOVERNOR_PROMOTION_VOIDSINGERS_2';
UPDATE GovernorPromotionConditions SET EarliestGameEra="ERA_CLASSICAL" WHERE GovernorPromotionType='GOVERNOR_PROMOTION_SANGUINE_PACT_2';

UPDATE GovernorPromotionConditions SET EarliestGameEra="ERA_MEDIEVAL" WHERE GovernorPromotionType='GOVERNOR_PROMOTION_HERMETIC_ORDER_3';
UPDATE GovernorPromotionConditions SET EarliestGameEra="ERA_MEDIEVAL" WHERE GovernorPromotionType='GOVERNOR_PROMOTION_OWLS_OF_MINERVA_3';
UPDATE GovernorPromotionConditions SET EarliestGameEra="ERA_MEDIEVAL" WHERE GovernorPromotionType='GOVERNOR_PROMOTION_VOIDSINGERS_3';
UPDATE GovernorPromotionConditions SET EarliestGameEra="ERA_MEDIEVAL" WHERE GovernorPromotionType='GOVERNOR_PROMOTION_SANGUINE_PACT_3';

UPDATE GovernorPromotionConditions SET EarliestGameEra="ERA_INDUSTRIAL" WHERE GovernorPromotionType='GOVERNOR_PROMOTION_HERMETIC_ORDER_4';
UPDATE GovernorPromotionConditions SET EarliestGameEra="ERA_INDUSTRIAL" WHERE GovernorPromotionType='GOVERNOR_PROMOTION_OWLS_OF_MINERVA_4';
UPDATE GovernorPromotionConditions SET EarliestGameEra="ERA_INDUSTRIAL" WHERE GovernorPromotionType='GOVERNOR_PROMOTION_VOIDSINGERS_4';
UPDATE GovernorPromotionConditions SET EarliestGameEra="ERA_INDUSTRIAL" WHERE GovernorPromotionType='GOVERNOR_PROMOTION_SANGUINE_PACT_4';

--专家产出适配
INSERT INTO Building_CitizenYieldChanges (BuildingType, YieldType, YieldChange) VALUES
('BUILDING_ALCHEMICAL_SOCIETY', 'YIELD_SCIENCE', 1),
('BUILDING_GILDED_VAULT', 'YIELD_GOLD', 2);
--建筑改动适配
INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_GILDED_VAULT', 'GILDED_VAULT_GOLD_Cos');
INSERT INTO Modifiers (ModifierId , ModifierType ,SubjectRequirementSetId) VALUES
('GILDED_VAULT_GOLD_Cos', 'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER', NULL);
INSERT INTO ModifierArguments (ModifierId , Name , Value) VALUES
('GILDED_VAULT_GOLD_Cos', 'YieldType', 'YIELD_GOLD'),
('GILDED_VAULT_GOLD_Cos', 'Amount', '5');
INSERT INTO Building_YieldDistrictCopies (BuildingType, OldYieldType, NewYieldType)
	VALUES ('BUILDING_GILDED_VAULT', 'YIELD_GOLD', 'YIELD_GOLD');