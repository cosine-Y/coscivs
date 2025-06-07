--阿卡萨--
--魅力75%科技
UPDATE Improvements SET YieldFromAppealPercent=75 WHERE ImprovementType='IMPROVEMENT_ALCAZAR';
--巴特依--
--可以建在泛滥上
INSERT INTO Improvement_ValidFeatures (ImprovementType, FeatureType) VALUES
    ('IMPROVEMENT_BATEY', 'FEATURE_FLOODPLAINS'),
	('IMPROVEMENT_BATEY', 'FEATURE_FLOODPLAINS_PLAINS'),
	('IMPROVEMENT_BATEY', 'FEATURE_FLOODPLAINS_GRASSLAND');
--可以相邻
UPDATE Improvements SET SameAdjacentValid=1 WHERE ImprovementType='IMPROVEMENT_BATEY';
--相邻跑马场、街头狂欢节、水上乐园、科帕卡瓦纳加文化
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId) VALUES
    ('IMPROVEMENT_BATEY', 'Batey_HIPPODROME_Adjacency_Cos'),
	('IMPROVEMENT_BATEY', 'Batey_LateHIPPODROME_Adjacency_Cos'),
    ('IMPROVEMENT_BATEY', 'Batey_STREET_CARNIVAL_Adjacency_Cos'),
    ('IMPROVEMENT_BATEY', 'Batey_LateSTREET_CARNIVAL_Adjacency_Cos'),
    ('IMPROVEMENT_BATEY', 'Batey_WATER_ENTERTAINMENT_Adjacency_Cos'),
	('IMPROVEMENT_BATEY', 'Batey_LateWATER_ENTERTAINMENT_Adjacency_Cos'),
    ('IMPROVEMENT_BATEY', 'Batey_WATER_STREET_CARNIVAL_Adjacency_Cos'),
    ('IMPROVEMENT_BATEY', 'Batey_LateWATER_STREET_CARNIVAL_Adjacency_Cos');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentDistrict, PrereqCivic, ObsoleteCivic) VALUES
('Batey_HIPPODROME_Adjacency_Cos', 'Placeholder', 'YIELD_CULTURE', 1, 1, 'DISTRICT_HIPPODROME', NULL, 'CIVIC_EXPLORATION'),
('Batey_LateHIPPODROME_Adjacency_Cos', 'Placeholder', 'YIELD_CULTURE', 2, 1, 'DISTRICT_HIPPODROME', 'CIVIC_EXPLORATION', NULL),
('Batey_STREET_CARNIVAL_Adjacency_Cos', 'Placeholder', 'YIELD_CULTURE', 1, 1, 'DISTRICT_STREET_CARNIVAL', NULL, 'CIVIC_EXPLORATION'),
('Batey_LateSTREET_CARNIVAL_Adjacency_Cos', 'Placeholder', 'YIELD_CULTURE', 2, 1, 'DISTRICT_STREET_CARNIVAL', 'CIVIC_EXPLORATION', NULL),
('Batey_WATER_ENTERTAINMENT_Adjacency_Cos', 'Placeholder', 'YIELD_CULTURE', 1, 1, 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', NULL, 'CIVIC_EXPLORATION'),
('Batey_LateWATER_ENTERTAINMENT_Adjacency_Cos', 'Placeholder', 'YIELD_CULTURE', 2, 1, 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 'CIVIC_EXPLORATION', NULL),
('Batey_WATER_STREET_CARNIVAL_Adjacency_Cos', 'Placeholder', 'YIELD_CULTURE', 1, 1, 'DISTRICT_WATER_STREET_CARNIVAL', NULL, 'CIVIC_EXPLORATION'),
('Batey_LateWATER_STREET_CARNIVAL_Adjacency_Cos', 'Placeholder', 'YIELD_CULTURE', 2, 1, 'DISTRICT_WATER_STREET_CARNIVAL', 'CIVIC_EXPLORATION', NULL);
--堡垒--
--相邻军营、航空港+1锤
INSERT INTO Improvement_YieldChanges (ImprovementType, YieldType, YieldChange) VALUES
    ('IMPROVEMENT_FORT', 'YIELD_PRODUCTION', 0),
    ('IMPROVEMENT_FORT', 'YIELD_FOOD', 0);
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId) VALUES
    ('IMPROVEMENT_FORT', 'FORT_ENCAMPMENT_PRODUCTION_Cos'),
	('IMPROVEMENT_FORT', 'FORT_THANH_PRODUCTION_Cos'),
    ('IMPROVEMENT_FORT', 'FORT_IKANDA_PRODUCTION_Cos'),
    ('IMPROVEMENT_FORT', 'FORT_AERODROME_PRODUCTION_Cos');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentDistrict) VALUES
('FORT_ENCAMPMENT_PRODUCTION_Cos', 'Placeholder', 'YIELD_PRODUCTION', 1, 1, 'DISTRICT_ENCAMPMENT'),
('FORT_THANH_PRODUCTION_Cos', 'Placeholder', 'YIELD_PRODUCTION', 1, 1, 'DISTRICT_THANH'),
('FORT_IKANDA_PRODUCTION_Cos', 'Placeholder', 'YIELD_PRODUCTION', 1, 1, 'DISTRICT_IKANDA'),
('FORT_AERODROME_PRODUCTION_Cos', 'Placeholder', 'YIELD_PRODUCTION', 1, 1, 'DISTRICT_AERODROME');
--相邻两个堡垒+1锤
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId) VALUES
    ('IMPROVEMENT_FORT', 'FORT_FORT_PRODUCTION_Cos');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentImprovement) VALUES
('FORT_FORT_PRODUCTION_Cos', 'Placeholder', 'YIELD_PRODUCTION', 1, 2, 'IMPROVEMENT_FORT');
--紧急部署后，相邻两个堡垒+1粮
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId) VALUES
    ('IMPROVEMENT_FORT', 'FORT_FORT_FOOD_Cos');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentImprovement, PrereqCivic) VALUES
('FORT_FORT_FOOD_Cos', 'Placeholder', 'YIELD_FOOD', 1, 2, 'IMPROVEMENT_FORT', 'CIVIC_RAPID_DEPLOYMENT');
--能建在泛滥上
INSERT INTO Improvement_ValidFeatures (ImprovementType, FeatureType) VALUES
    ('IMPROVEMENT_FORT', 'FEATURE_FLOODPLAINS'),
	('IMPROVEMENT_FORT', 'FEATURE_FLOODPLAINS_PLAINS'),
	('IMPROVEMENT_FORT', 'FEATURE_FLOODPLAINS_GRASSLAND');
INSERT INTO Improvement_ValidFeatures (ImprovementType, FeatureType) VALUES
    ('IMPROVEMENT_ROMAN_FORT', 'FEATURE_FLOODPLAINS'),
	('IMPROVEMENT_ROMAN_FORT', 'FEATURE_FLOODPLAINS_PLAINS'),
	('IMPROVEMENT_ROMAN_FORT', 'FEATURE_FLOODPLAINS_GRASSLAND');
--采石场--
--火药加锤改为机械
UPDATE Improvement_BonusYieldChanges SET PrereqTech='TECH_MACHINERY' WHERE PrereqTech='TECH_GUNPOWDER';
--大寺--
--可以建在泛滥上
INSERT INTO Improvement_ValidFeatures (ImprovementType, FeatureType) VALUES
    ('IMPROVEMENT_MAHAVIHARA', 'FEATURE_FLOODPLAINS'),
	('IMPROVEMENT_MAHAVIHARA', 'FEATURE_FLOODPLAINS_PLAINS'),
	('IMPROVEMENT_MAHAVIHARA', 'FEATURE_FLOODPLAINS_GRASSLAND');
--地热发电厂--
--+2金币
INSERT INTO Improvement_YieldChanges (ImprovementType, YieldType, YieldChange) VALUES
('IMPROVEMENT_GEOTHERMAL_PLANT', 'YIELD_GOLD', 2);
--伐木场--
--公会后可建在雨林上
UPDATE Improvement_ValidFeatures SET PrereqCivic='CIVIC_GUILDS' WHERE ImprovementType='IMPROVEMENT_LUMBER_MILL' AND PrereqCivic='CIVIC_MERCANTILISM';
--风力发电厂--
--+2锤
UPDATE Improvement_YieldChanges SET YieldChange=2 WHERE ImprovementType='IMPROVEMENT_WIND_FARM' AND YieldType='YIELD_PRODUCTION';
--海滨度假区--
--+1宜居度
INSERT INTO ImprovementModifiers (ImprovementType, ModifierID) VALUES
('IMPROVEMENT_BEACH_RESORT', 'SKI_RESORT_AMENITY');
--海油钻机--
--预报+2锤
UPDATE Improvement_BonusYieldChanges SET BonusYieldChange=2 WHERE ImprovementType='IMPROVEMENT_OFFSHORE_OIL_RIG';
--油井--
--预报+2锤
UPDATE Improvement_BonusYieldChanges SET BonusYieldChange=2 WHERE ImprovementType='IMPROVEMENT_OIL_WELL';
--滑雪场--
--能上人口
UPDATE Improvements SET Workable=1 WHERE ImprovementType='IMPROVEMENT_SKI_RESORT';
--+2金
INSERT INTO Improvement_YieldChanges (ImprovementType, YieldType, YieldChange) VALUES
('IMPROVEMENT_SKI_RESORT', 'YIELD_GOLD', 2);
--巨神头像--
--可以建在树林雨林上
INSERT INTO Improvement_ValidFeatures (ImprovementType, FeatureType) VALUES
    ('IMPROVEMENT_COLOSSAL_HEAD', 'FEATURE_JUNGLE'),
	('IMPROVEMENT_COLOSSAL_HEAD', 'FEATURE_FOREST');
--矿山--
--能建在地热上
INSERT INTO Improvement_ValidFeatures (ImprovementType, FeatureType) VALUES
    ('IMPROVEMENT_MINE', 'FEATURE_GEOTHERMAL_FISSURE');
--离岸风力发电厂--
--+2金币
INSERT INTO Improvement_YieldChanges (ImprovementType, YieldType, YieldChange) VALUES
('IMPROVEMENT_OFFSHORE_WIND_FARM', 'YIELD_GOLD', 2);
--摩艾石像--
--可以与树相邻
DELETE FROM Improvement_InvalidAdjacentFeatures WHERE ImprovementType='IMPROVEMENT_MOAI';
--位于或与树相邻-2文化（写多了）
INSERT INTO ImprovementModifiers (ImprovementType, ModifierID) VALUES
('IMPROVEMENT_MOAI', 'MOAI_FORESTADJACENCY_CULTURE_Cos');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('MOAI_FORESTADJACENCY_CULTURE_Cos' , 'MODIFIER_SINGLE_PLOT_ADJUST_PLOT_YIELDS', 'PLOT_WITHIN_ONE_HEX_TO_FOREST_REQUIREMENTS_Cos');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_WITHIN_ONE_HEX_TO_FOREST_REQUIREMENTS_Cos' , 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('PLOT_WITHIN_ONE_HEX_TO_FOREST_REQUIREMENTS_Cos' , 'REQUIRES_PLOT_ADJACENT_FOREST_ROOSEVELT'),
('PLOT_WITHIN_ONE_HEX_TO_FOREST_REQUIREMENTS_Cos' , 'PLOT_IS_FOREST_REQUIREMENT');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('MOAI_FORESTADJACENCY_CULTURE_Cos' , 'YieldType', 'YIELD_CULTURE'),
('MOAI_FORESTADJACENCY_CULTURE_Cos' , 'Amount', '-2');
INSERT INTO ImprovementModifiers (ImprovementType, ModifierID) VALUES
('IMPROVEMENT_MOAI', 'MOAI_JUNGLEADJACENCY_CULTURE_Cos');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('MOAI_JUNGLEADJACENCY_CULTURE_Cos' , 'MODIFIER_SINGLE_PLOT_ADJUST_PLOT_YIELDS', 'PLOT_WITHIN_ONE_HEX_TO_JUNGLE_REQUIREMENTS_Cos');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_WITHIN_ONE_HEX_TO_JUNGLE_REQUIREMENTS_Cos' , 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('PLOT_WITHIN_ONE_HEX_TO_JUNGLE_REQUIREMENTS_Cos' , 'REQUIRES_PLOT_ADJACENT_JUNGLE_CosAmericaBM'),
('PLOT_WITHIN_ONE_HEX_TO_JUNGLE_REQUIREMENTS_Cos' , 'REQUIRES_PLOT_HAS_JUNGLE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('MOAI_JUNGLEADJACENCY_CULTURE_Cos' , 'YieldType', 'YIELD_CULTURE'),
('MOAI_JUNGLEADJACENCY_CULTURE_Cos' , 'Amount', '-2');
--可以建在沙漠冻土上
INSERT INTO Improvement_ValidTerrains (ImprovementType, TerrainType)
	VALUES ('IMPROVEMENT_MOAI' , 'TERRAIN_DESERT');
INSERT INTO Improvement_ValidTerrains (ImprovementType, TerrainType)
	VALUES ('IMPROVEMENT_MOAI' , 'TERRAIN_TUNDRA');
INSERT INTO Improvement_ValidTerrains (ImprovementType, TerrainType)
	VALUES ('IMPROVEMENT_MOAI' , 'TERRAIN_DESERT_HILLS');
INSERT INTO Improvement_ValidTerrains (ImprovementType, TerrainType)
	VALUES ('IMPROVEMENT_MOAI' , 'TERRAIN_TUNDRA_HILLS');
--牧场--
--骑马后相邻1个牧场+1粮
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId) VALUES
    ('IMPROVEMENT_PASTURE', 'PASTURE_PASTURE_FOOD_Cos');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentImprovement, PrereqTech) VALUES
('PASTURE_PASTURE_FOOD_Cos', 'Placeholder', 'YIELD_FOOD', 1, 1, 'IMPROVEMENT_PASTURE', 'TECH_HORSEBACK_RIDING');
--纳斯卡巨画--
--自然历史后可以建在草原平原上
INSERT INTO Improvement_ValidTerrains (ImprovementType, TerrainType, PrereqCivic) VALUES
('IMPROVEMENT_NAZCA_LINE', 'TERRAIN_PLAINS', 'CIVIC_NATURAL_HISTORY');
INSERT INTO Improvement_ValidTerrains (ImprovementType, TerrainType, PrereqCivic) VALUES
('IMPROVEMENT_NAZCA_LINE', 'TERRAIN_GRASS', 'CIVIC_NATURAL_HISTORY');
--农场
--化学+1粮
INSERT INTO Improvement_BonusYieldChanges (ImprovementType, YieldType, BonusYieldChange, PrereqTech) VALUES
('IMPROVEMENT_FARM', 'YIELD_FOOD', '1', 'TECH_CHEMISTRY');
--市立公园--
--+2金，城市化相邻区域+2金
INSERT INTO Improvement_YieldChanges (ImprovementType, YieldType, YieldChange) VALUES
('IMPROVEMENT_CITY_PARK', 'YIELD_GOLD', 2);
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId) VALUES
    ('IMPROVEMENT_CITY_PARK', 'CITY_PARK_DISTRICT_Cos');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, OtherDistrictAdjacent, PrereqCivic) VALUES
('CITY_PARK_DISTRICT_Cos', 'Placeholder', 'YIELD_GOLD', 2, 1, 1, 'CIVIC_URBANIZATION');
--太阳能农场--
--相邻1个太阳能农场+2金
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId) VALUES
    ('IMPROVEMENT_SOLAR_FARM', 'SOLAR_SOLAR_GOLD_Cos');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentImprovement) VALUES
('SOLAR_SOLAR_GOLD_Cos', 'Placeholder', 'YIELD_GOLD', 2, 1, 'IMPROVEMENT_SOLAR_FARM');
--可以建在雪地上
INSERT INTO Improvement_ValidTerrains (ImprovementType, TerrainType)
	VALUES ('IMPROVEMENT_SOLAR_FARM' , 'TERRAIN_SNOW');
--可以建在泛滥上
INSERT INTO Improvement_ValidFeatures (ImprovementType, FeatureType) VALUES
    ('IMPROVEMENT_SOLAR_FARM', 'FEATURE_FLOODPLAINS'),
	('IMPROVEMENT_SOLAR_FARM', 'FEATURE_FLOODPLAINS_PLAINS'),
	('IMPROVEMENT_SOLAR_FARM', 'FEATURE_FLOODPLAINS_GRASSLAND');
--修道院--
--武僧可建
INSERT INTO Improvement_ValidBuildUnits (ImprovementType, UnitType) VALUES
('IMPROVEMENT_MONASTERY', 'UNIT_WARRIOR_MONK');
--相邻一个区域+1信仰
UPDATE Adjacency_YieldChanges SET TilesRequired=1 WHERE ID='Monastery_DistrictAdjacency';
--可以建在泛滥上
INSERT INTO Improvement_ValidFeatures (ImprovementType, FeatureType) VALUES
    ('IMPROVEMENT_MONASTERY', 'FEATURE_FLOODPLAINS'),
	('IMPROVEMENT_MONASTERY', 'FEATURE_FLOODPLAINS_PLAINS'),
	('IMPROVEMENT_MONASTERY', 'FEATURE_FLOODPLAINS_GRASSLAND');
--武僧+50%经验
INSERT INTO ImprovementModifiers (ImprovementType, ModifierID) VALUES
('IMPROVEMENT_MONASTERY', 'MONASTERY_TRAINED_UNIT_XP_MODIFIER_Cos');
INSERT INTO Modifiers (ModifierId, ModifierType, Permanent) VALUES
('MONASTERY_TRAINED_UNIT_XP_MODIFIER_Cos' , 'MODIFIER_SINGLE_CITY_GRANT_ABILITY_FOR_TRAINED_UNITS', 1),
('MONASTERY_TRAINED_UNIT_XP_Cos' , 'MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER', 1);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('MONASTERY_TRAINED_UNIT_XP_MODIFIER_Cos' , 'AbilityType', 'ABILITY_MONASTERY_TRAINED_UNIT_XP_Cos'),
('MONASTERY_TRAINED_UNIT_XP_Cos' , 'Amount', '50');
INSERT INTO Types (Type, Kind) VALUES
('ABILITY_MONASTERY_TRAINED_UNIT_XP_Cos', 'KIND_ABILITY');
INSERT INTO TypeTags (Type, Tag) VALUES
('ABILITY_MONASTERY_TRAINED_UNIT_XP_Cos', 'CLASS_WARRIOR_MONK');
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES
('ABILITY_MONASTERY_TRAINED_UNIT_XP_Cos','MONASTERY_TRAINED_UNIT_XP_Cos');
INSERT INTO UnitAbilities (UnitAbilityType, Name ,Description ,Inactive) VALUES
('ABILITY_MONASTERY_TRAINED_UNIT_XP_Cos', 'LOC_ABILITY_MONASTERY_TRAINED_UNIT_XP_NAME_Cos','LOC_ABILITY_MONASTERY_TRAINED_UNIT_XP_DESCRIPTION_Cos',1);
--渔场--
--天文导航后相邻1个渔场+1金
INSERT INTO Improvement_YieldChanges (ImprovementType, YieldType, YieldChange) VALUES
('IMPROVEMENT_FISHERY', 'YIELD_GOLD', 0);
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId) VALUES
    ('IMPROVEMENT_FISHERY', 'FISHERY_FISHERY_GOLD_Cos');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentImprovement, PrereqTech) VALUES
('FISHERY_FISHERY_GOLD_Cos', 'Placeholder', 'YIELD_GOLD', 1, 1, 'IMPROVEMENT_FISHERY', 'TECH_CELESTIAL_NAVIGATION');
--封建主义后相邻2个渔场+1粮
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId) VALUES
    ('IMPROVEMENT_FISHERY', 'FISHERY_FISHERY_FOOD_Cos');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentImprovement, PrereqCivic) VALUES
('FISHERY_FISHERY_FOOD_Cos', 'Placeholder', 'YIELD_FOOD', 1, 2, 'IMPROVEMENT_FISHERY', 'CIVIC_FEUDALISM');
--不需要总督
UPDATE Improvements SET TraitType=NULL WHERE ImprovementType='IMPROVEMENT_FISHERY';
--渔船--
--塑料加粮改为天文导航加锤
UPDATE Improvement_BonusYieldChanges SET PrereqTech='TECH_CELESTIAL_NAVIGATION',YieldType='YIELD_PRODUCTION' WHERE PrereqTech='TECH_PLASTICS';
UPDATE Technologies SET Description=NULL WHERE TechnologyType='TECH_PLASTICS';
--能建在礁石上
INSERT INTO Improvement_ValidFeatures (ImprovementType, FeatureType) VALUES
    ('IMPROVEMENT_FISHING_BOATS', 'FEATURE_REEF');
--圆顶市集--
--可以建在泛滥上
INSERT INTO Improvement_ValidFeatures (ImprovementType, FeatureType) VALUES
    ('IMPROVEMENT_TRADING_DOME', 'FEATURE_FLOODPLAINS'),
	('IMPROVEMENT_TRADING_DOME', 'FEATURE_FLOODPLAINS_PLAINS'),
	('IMPROVEMENT_TRADING_DOME', 'FEATURE_FLOODPLAINS_GRASSLAND');
--相邻一个奢侈+2金
UPDATE Adjacency_YieldChanges SET YieldChange=2 WHERE ID='TradingDome_LuxuryAdjacency';
--外商+2金
UPDATE ModifierArguments SET Value='2' WHERE ModifierId='MINOR_CIV_SAMARKAND_TRADE_GOLD_MODIFIER' AND Name='Amount';