--罗马
--国境内单位+1移动力
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_ALL_ROADS_TO_ROME' , 'OWNER_TERRITORY_MOVEMENT_BONUS_CosRome');
INSERT INTO Modifiers (ModifierId , ModifierType)
	VALUES ('OWNER_TERRITORY_MOVEMENT_BONUS_CosRome' , 'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER');
INSERT INTO Modifiers (ModifierId , ModifierType, SubjectRequirementSetId)
	VALUES ('OWNER_TERRITORY_MOVEMENT_BONUS_MODIFIER_CosRome' , 'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT' ,'PLAYER_UNITS_WITHIN_TERRITORY_REQUIREMENTS_CosRome');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('OWNER_TERRITORY_MOVEMENT_BONUS_CosRome' , 'ModifierId', 'OWNER_TERRITORY_MOVEMENT_BONUS_MODIFIER_CosRome');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('OWNER_TERRITORY_MOVEMENT_BONUS_MODIFIER_CosRome' , 'Amount' , '1');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLAYER_UNITS_WITHIN_TERRITORY_REQUIREMENTS_CosRome' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLAYER_UNITS_WITHIN_TERRITORY_REQUIREMENTS_CosRome' , 'UNIT_IN_OWNER_TERRITORY_REQUIREMENT');
--贸易站+2金
UPDATE ModifierArguments SET Value='2' WHERE ModifierId='TRAIT_GOLD_FROM_DOMESTIC_TRADING_POSTS' AND Name='Amount'; 
--图拉真--
-- 市中心建筑+1锤，政治哲学后+1粮(拦洪坝除外）
INSERT INTO TraitModifiers (TraitType, ModifierId) SELECT
'TRAJANS_COLUMN_TRAIT', 'TRAIT_' || BuildingType || 'PRODUCTION_CosRome' FROM Buildings WHERE PrereqDistrict='DISTRICT_CITY_CENTER' AND BuildingType!='BUILDING_FLOOD_BARRIER';
INSERT INTO Modifiers (ModifierId, ModifierType) SELECT
'TRAIT_' || BuildingType || 'PRODUCTION_CosRome', 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE' FROM Buildings WHERE PrereqDistrict='DISTRICT_CITY_CENTER' AND BuildingType!='BUILDING_FLOOD_BARRIER';
INSERT INTO ModifierArguments (ModifierId, Name ,Value) SELECT
'TRAIT_' || BuildingType || 'PRODUCTION_CosRome', 'BuildingType', BuildingType FROM Buildings WHERE PrereqDistrict='DISTRICT_CITY_CENTER' AND BuildingType!='BUILDING_FLOOD_BARRIER';
INSERT INTO ModifierArguments (ModifierId, Name ,Value) SELECT
'TRAIT_' || BuildingType || 'PRODUCTION_CosRome', 'YieldType', 'YIELD_PRODUCTION' FROM Buildings WHERE PrereqDistrict='DISTRICT_CITY_CENTER' AND BuildingType!='BUILDING_FLOOD_BARRIER';
INSERT INTO ModifierArguments (ModifierId, Name ,Value) SELECT
'TRAIT_' || BuildingType || 'PRODUCTION_CosRome', 'Amount', '1' FROM Buildings WHERE PrereqDistrict='DISTRICT_CITY_CENTER' AND BuildingType!='BUILDING_FLOOD_BARRIER';

INSERT INTO TraitModifiers (TraitType, ModifierId) SELECT
'TRAJANS_COLUMN_TRAIT', 'TRAIT_' || BuildingType || 'FOOD_CosRome' FROM Buildings WHERE PrereqDistrict='DISTRICT_CITY_CENTER' AND BuildingType!='BUILDING_FLOOD_BARRIER';
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) SELECT
'TRAIT_' || BuildingType || 'FOOD_CosRome', 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE', 'PLAYER_HAS_POLITICAL_PHILOSOPHY' FROM Buildings WHERE PrereqDistrict='DISTRICT_CITY_CENTER' AND BuildingType!='BUILDING_FLOOD_BARRIER';
INSERT INTO ModifierArguments (ModifierId, Name ,Value) SELECT
'TRAIT_' || BuildingType || 'FOOD_CosRome', 'BuildingType', BuildingType FROM Buildings WHERE PrereqDistrict='DISTRICT_CITY_CENTER' AND BuildingType!='BUILDING_FLOOD_BARRIER';
INSERT INTO ModifierArguments (ModifierId, Name ,Value) SELECT
'TRAIT_' || BuildingType || 'FOOD_CosRome', 'YieldType', 'YIELD_FOOD' FROM Buildings WHERE PrereqDistrict='DISTRICT_CITY_CENTER' AND BuildingType!='BUILDING_FLOOD_BARRIER';
INSERT INTO ModifierArguments (ModifierId, Name ,Value) SELECT
'TRAIT_' || BuildingType || 'FOOD_CosRome', 'Amount', '1' FROM Buildings WHERE PrereqDistrict='DISTRICT_CITY_CENTER' AND BuildingType!='BUILDING_FLOOD_BARRIER';
-- --市中心建筑+50%文化、100%食物、100%生产力
-- INSERT INTO TraitModifiers (TraitType , ModifierId)
-- 	VALUES ('TRAJANS_COLUMN_TRAIT' , 'CITY_CENTER_CULTURE_CosRome');
-- INSERT INTO Modifiers (ModifierId , ModifierType)
-- 	VALUES ('CITY_CENTER_CULTURE_CosRome' , 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_MODIFIERS_FOR_DISTRICT');
-- INSERT INTO ModifierArguments (ModifierId , Name , Value) VALUES
-- ('CITY_CENTER_CULTURE_CosRome' , 'DistrictType', 'DISTRICT_CITY_CENTER'),
-- ('CITY_CENTER_CULTURE_CosRome' , 'YieldType', 'YIELD_CULTURE'),
-- ('CITY_CENTER_CULTURE_CosRome' , 'Amount', '50');
-- INSERT INTO TraitModifiers (TraitType , ModifierId)
-- 	VALUES ('TRAJANS_COLUMN_TRAIT' , 'CITY_CENTER_PRODUCTION_CosRome');
-- INSERT INTO Modifiers (ModifierId , ModifierType)
-- 	VALUES ('CITY_CENTER_PRODUCTION_CosRome' , 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_MODIFIERS_FOR_DISTRICT');
-- INSERT INTO ModifierArguments (ModifierId , Name , Value) VALUES
-- ('CITY_CENTER_PRODUCTION_CosRome' , 'DistrictType', 'DISTRICT_CITY_CENTER'),
-- ('CITY_CENTER_PRODUCTION_CosRome' , 'YieldType', 'YIELD_PRODUCTION'),
-- ('CITY_CENTER_PRODUCTION_CosRome' , 'Amount', '100');
-- INSERT INTO TraitModifiers (TraitType , ModifierId)
-- 	VALUES ('TRAJANS_COLUMN_TRAIT' , 'CITY_CENTER_FOOD_CosRome');
-- INSERT INTO Modifiers (ModifierId , ModifierType)
-- 	VALUES ('CITY_CENTER_FOOD_CosRome' , 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_MODIFIERS_FOR_DISTRICT');
-- INSERT INTO ModifierArguments (ModifierId , Name , Value) VALUES
-- ('CITY_CENTER_FOOD_CosRome' , 'DistrictType', 'DISTRICT_CITY_CENTER'),
-- ('CITY_CENTER_FOOD_CosRome' , 'YieldType', 'YIELD_FOOD'),
-- ('CITY_CENTER_FOOD_CosRome' , 'Amount', '100');
--凯撒--
--清寨回血
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_LEADER_CAESAR' , 'INITIATION_RITES_HEALING_DISPERSAL_MODIFIER');
--击杀给金币
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_LEADER_CAESAR' , 'GOLD_KILLS_CosRome');
INSERT INTO Modifiers (ModifierId , ModifierType)
	VALUES ('GOLD_KILLS_CosRome' , 'MODIFIER_PLAYER_UNITS_ADJUST_POST_COMBAT_YIELD');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('GOLD_KILLS_CosRome' , 'YieldType', 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('GOLD_KILLS_CosRome' , 'PercentDefeatedStrength' , '50');
--浴场取消限制
UPDATE Districts SET Aqueduct=0 WHERE DistrictType='DISTRICT_BATH';
--罗马军团可以修路
INSERT INTO Route_ValidBuildUnits (RouteType , UnitType) VALUES
('ROUTE_ANCIENT_ROAD' , 'UNIT_ROMAN_LEGION'),
('ROUTE_MEDIEVAL_ROAD' , 'UNIT_ROMAN_LEGION');
