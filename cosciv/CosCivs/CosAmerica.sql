--美国
--市政广场额外区域位
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_CIVILIZATION_FOUNDING_FATHERS', 'TRAIT_GOVERNMENT_EXTRA_DISTRICT_CosAmerica');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 	
    ('TRAIT_GOVERNMENT_EXTRA_DISTRICT_CosAmerica', 'MODIFIER_PLAYER_CITIES_EXTRA_DISTRICT', 'CITY_HAS_GOV_DISTRICT');
/* INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('CITY_HAS_GOVERNMENT_REQUIREMENTS_CosAmerica' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('CITY_HAS_GOVERNMENT_REQUIREMENTS_CosAmerica' , 'REQUIREMENT_CITY_HAS_GOVERNMENT_CosAmerica');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIREMENT_CITY_HAS_GOVERNMENT_CosAmerica' , 'REQUIREMENT_CITY_HAS_DISTRICT');
INSERT INTO RequirementArguments (RequirementId, Name, Value)
	VALUES ('REQUIREMENT_CITY_HAS_GOVERNMENT_CosAmerica' , 'DistrictType' , 'DISTRICT_GOVERNMENT'); */
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_GOVERNMENT_EXTRA_DISTRICT_CosAmerica' , 'Amount' , '1');
--外交区额外区域位
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_CIVILIZATION_FOUNDING_FATHERS', 'TRAIT_DIPLOMATIC_EXTRA_DISTRICT_CosAmerica');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 	
    ('TRAIT_DIPLOMATIC_EXTRA_DISTRICT_CosAmerica', 'MODIFIER_PLAYER_CITIES_EXTRA_DISTRICT', 'CITY_HAS_DIPLOMATIC_REQUIREMENTS_CosAmerica');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('CITY_HAS_DIPLOMATIC_REQUIREMENTS_CosAmerica' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('CITY_HAS_DIPLOMATIC_REQUIREMENTS_CosAmerica' , 'REQUIREMENT_CITY_HAS_DIPLOMATIC_CosAmerica');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIREMENT_CITY_HAS_DIPLOMATIC_CosAmerica' , 'REQUIREMENT_CITY_HAS_DISTRICT');
INSERT INTO RequirementArguments (RequirementId, Name, Value)
	VALUES ('REQUIREMENT_CITY_HAS_DIPLOMATIC_CosAmerica' , 'DistrictType' , 'DISTRICT_DIPLOMATIC_QUARTER');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_DIPLOMATIC_EXTRA_DISTRICT_CosAmerica' , 'Amount' , '1');
/* --获得新单元格速度加快40%
INSERT INTO Types (Type,Kind) 
	VALUES ('MODIFIER_PLAYER_CITIES_CULTURE_BORDER_EXPANSION_CosAmerica', 'KIND_MODIFIER');
INSERT INTO DynamicModifiers (ModifierType, CollectionType, EffectType)
	VALUES ('MODIFIER_PLAYER_CITIES_CULTURE_BORDER_EXPANSION_CosAmerica', 'COLLECTION_PLAYER_CITIES', 'EFFECT_ADJUST_CITY_CULTURE_BORDER_EXPANSION');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_FOUNDING_FATHERS', 'FASTER_PLOT_ANNEXING_CosAmerica');
INSERT INTO Modifiers (ModifierId, ModifierType)
	VALUES 	('FASTER_PLOT_ANNEXING_CosAmerica', 'MODIFIER_PLAYER_CITIES_CULTURE_BORDER_EXPANSION_CosAmerica');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('FASTER_PLOT_ANNEXING_CosAmerica', 'Amount', '40'); */
--文美--
--惊艳单元格加1科1文
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_ANTIQUES_AND_PARKS', 'TRAIT_Sci_Cul_Breathtaking_CosAmericaBM');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 	
    ('TRAIT_Sci_Cul_Breathtaking_CosAmericaBM', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_BREATHTAKING_APPEAL');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_Sci_Cul_Breathtaking_CosAmericaBM', 'YieldType', 'YIELD_CULTURE,YIELD_SCIENCE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_Sci_Cul_Breathtaking_CosAmericaBM', 'Amount', '1,1');
--相邻山脉自然奇观惊艳加1科
UPDATE ModifierArguments SET Value='1' WHERE ModifierId='TRAIT_ANTIQUES_AND_PARKS_SCIENCE_NATIONAL_WONDERS_OR_MOUNTAINS' and Name='Amount';
--相邻海岸、湖泊惊艳加1科
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('REQUIREMENTS_PLOT_ADJACENT_NATURAL_WONDERS_OR_MOUNTAINS' , 'REQUIRES_PLOT_ADJACENT_TO_COAST'),
('REQUIREMENTS_PLOT_ADJACENT_NATURAL_WONDERS_OR_MOUNTAINS' , 'REQUIRES_PLOT_ADJACENT_TO_LAKE');
--相邻树林奇观建筑惊艳加1文
UPDATE ModifierArguments SET Value='1' WHERE ModifierId='TRAIT_ANTIQUES_AND_PARKS_CULTURE_FORESTS_OR_WONDERS' and Name='Amount';
--相邻雨林、绿洲、沼泽惊艳加1文
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('REQUIREMENTS_PLOT_ADJACENT_FORESTS_OR_WONDERS' , 'REQUIRES_PLOT_ADJACENT_JUNGLE_CosAmericaBM'),
('REQUIREMENTS_PLOT_ADJACENT_FORESTS_OR_WONDERS' , 'REQUIRES_PLOT_ADJACENT_OASIS_CosAmericaBM'),
('REQUIREMENTS_PLOT_ADJACENT_FORESTS_OR_WONDERS' , 'REQUIRES_PLOT_ADJACENT_MARSH_CosAmericaBM');
INSERT INTO Requirements (RequirementId , RequirementType) VALUES
('REQUIRES_PLOT_ADJACENT_JUNGLE_CosAmericaBM' , 'REQUIREMENT_PLOT_ADJACENT_FEATURE_TYPE_MATCHES'),
('REQUIRES_PLOT_ADJACENT_OASIS_CosAmericaBM' , 'REQUIREMENT_PLOT_ADJACENT_FEATURE_TYPE_MATCHES'),
('REQUIRES_PLOT_ADJACENT_MARSH_CosAmericaBM' , 'REQUIREMENT_PLOT_ADJACENT_FEATURE_TYPE_MATCHES');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
('REQUIRES_PLOT_ADJACENT_JUNGLE_CosAmericaBM', 'FeatureType', 'FEATURE_JUNGLE'),
('REQUIRES_PLOT_ADJACENT_OASIS_CosAmericaBM', 'FeatureType', 'FEATURE_OASIS'),
('REQUIRES_PLOT_ADJACENT_MARSH_CosAmericaBM', 'FeatureType', 'FEATURE_MARSH');
--公会种树
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_ANTIQUES_AND_PARKS', 'TRAIT_PLANT_GUILDS_CosAmericaBM');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 	
    ('TRAIT_PLANT_GUILDS_CosAmericaBM', 'MODIFIER_PLAYER_ADJUST_FEATURE_UNLOCK', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_PLANT_GUILDS_CosAmericaBM', 'FeatureType', 'FEATURE_FOREST');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_PLANT_GUILDS_CosAmericaBM', 'CivicType', 'CIVIC_GUILDS');
--武美--
-- --占领城市送使者
-- INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
--     ('TRAIT_LEADER_ROOSEVELT_COROLLARY', 'TRAIT_ENVOY_CAPTURED_CITY_CosAmericaRR');
-- INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 	
--     ('TRAIT_ENVOY_CAPTURED_CITY_CosAmericaRR', 'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER', NULL);
-- INSERT INTO Modifiers (ModifierId , ModifierType , SubjectRequirementSetId , RunOnce , Permanent) VALUES ('TRAIT_ENVOY_CAPTURED_CITY_CosAmericaRR_MODIFIER', 'MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN', NULL, 1, 1);	
-- INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_ENVOY_CAPTURED_CITY_CosAmericaRR', 'ModifierId', 'TRAIT_ENVOY_CAPTURED_CITY_CosAmericaRR_MODIFIER');
-- INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_ENVOY_CAPTURED_CITY_CosAmericaRR_MODIFIER', 'Amount', '2');
--通向城邦商路+1锤，殖民主义后再+1锤
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_ROOSEVELT_COROLLARY', 'TRADE_ROUTES_CITY_STATE_PRODUCTION_CosAmericaRR');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 	
    ('TRADE_ROUTES_CITY_STATE_PRODUCTION_CosAmericaRR', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTES_CITY_STATE_YIELD', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRADE_ROUTES_CITY_STATE_PRODUCTION_CosAmericaRR', 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRADE_ROUTES_CITY_STATE_PRODUCTION_CosAmericaRR', 'Amount', '1');

INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_ROOSEVELT_COROLLARY', 'TRADE_ROUTES_PRODUCTION_COLONIALISM_CosAmericaRR');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 	
    ('TRADE_ROUTES_PRODUCTION_COLONIALISM_CosAmericaRR', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTES_CITY_STATE_YIELD', 'PLAYER_HAS_COLONIALISM_REQUIREMENTS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRADE_ROUTES_PRODUCTION_COLONIALISM_CosAmericaRR', 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRADE_ROUTES_PRODUCTION_COLONIALISM_CosAmericaRR', 'Amount', '1');
--林肯--
--工业区+8忠诚
UPDATE ModifierArguments SET Value='8' WHERE ModifierId='TRAIT_LINCOLN_INDUSTRIAL_ZONE_LOYALTY'and Name='Amount';
--建工业区加速100%
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_LINCOLN', 'TRAIT_LINCOLN_INDUSTRIAL_ZONE_BOOST_CosLincoln');
INSERT INTO Modifiers (ModifierId , ModifierType , SubjectRequirementSetId)
	VALUES ('TRAIT_LINCOLN_INDUSTRIAL_ZONE_BOOST_CosLincoln', 'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION', NULL);
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('TRAIT_LINCOLN_INDUSTRIAL_ZONE_BOOST_CosLincoln', 'DistrictType', 'DISTRICT_INDUSTRIAL_ZONE');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('TRAIT_LINCOLN_INDUSTRIAL_ZONE_BOOST_CosLincoln', 'Amount', '100');
--建成工业区送工人
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_LINCOLN', 'TRAIT_LINCOLN_FREE_BUILDER_CosLincoln');
INSERT INTO Modifiers (ModifierId , ModifierType , SubjectRequirementSetId)
	VALUES ('TRAIT_LINCOLN_FREE_BUILDER_CosLincoln', 'MODIFIER_PLAYER_DISTRICT_CREATE_UNIT', NULL);
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('TRAIT_LINCOLN_FREE_BUILDER_CosLincoln', 'DistrictType', 'DISTRICT_INDUSTRIAL_ZONE');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('TRAIT_LINCOLN_FREE_BUILDER_CosLincoln', 'UnitType', 'UNIT_BUILDER');
--4人口工业区1锤1文
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LINCOLN', 'TRAIT_4_INDUSTRIAL_ZONE_PRODUCTION_CosLincoln');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_4_INDUSTRIAL_ZONE_PRODUCTION_CosLincoln' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 'DISTRICT_IS_INDUSTRIAL_ZONE_4_CosLincoln');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('DISTRICT_IS_INDUSTRIAL_ZONE_4_CosLincoln' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('DISTRICT_IS_INDUSTRIAL_ZONE_4_CosLincoln' , 'REQUIRES_POPULATION_4_CosChina'),
('DISTRICT_IS_INDUSTRIAL_ZONE_4_CosLincoln' , 'REQUIRES_DISTRICT_IS_INDUSTRIAL_ZONE');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_POPULATION_4_CosChina' , 'REQUIREMENT_CITY_HAS_X_POPULATION');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
('REQUIRES_POPULATION_4_CosChina' , 'Amount', '4');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_4_INDUSTRIAL_ZONE_PRODUCTION_CosLincoln', 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_4_INDUSTRIAL_ZONE_PRODUCTION_CosLincoln', 'Amount', '1');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LINCOLN', 'TRAIT_4_INDUSTRIAL_ZONE_CULTURE_CosLincoln');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_4_INDUSTRIAL_ZONE_CULTURE_CosLincoln' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 'DISTRICT_IS_INDUSTRIAL_ZONE_4_CosLincoln');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_4_INDUSTRIAL_ZONE_CULTURE_CosLincoln', 'YieldType', 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_4_INDUSTRIAL_ZONE_CULTURE_CosLincoln', 'Amount', '1');
--8人口工业区1锤1文
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LINCOLN', 'TRAIT_8_INDUSTRIAL_ZONE_PRODUCTION_CosLincoln');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_8_INDUSTRIAL_ZONE_PRODUCTION_CosLincoln' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 'DISTRICT_IS_INDUSTRIAL_ZONE_8_CosLincoln');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('DISTRICT_IS_INDUSTRIAL_ZONE_8_CosLincoln' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('DISTRICT_IS_INDUSTRIAL_ZONE_8_CosLincoln' , 'REQUIRES_POPULATION_8_CosChina'),
('DISTRICT_IS_INDUSTRIAL_ZONE_8_CosLincoln' , 'REQUIRES_DISTRICT_IS_INDUSTRIAL_ZONE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_8_INDUSTRIAL_ZONE_PRODUCTION_CosLincoln', 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_8_INDUSTRIAL_ZONE_PRODUCTION_CosLincoln', 'Amount', '1');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LINCOLN', 'TRAIT_8_INDUSTRIAL_ZONE_CULTURE_CosLincoln');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_8_INDUSTRIAL_ZONE_CULTURE_CosLincoln' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 'DISTRICT_IS_INDUSTRIAL_ZONE_8_CosLincoln');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_8_INDUSTRIAL_ZONE_CULTURE_CosLincoln', 'YieldType', 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_8_INDUSTRIAL_ZONE_CULTURE_CosLincoln', 'Amount', '1');
--12人口工业区1锤1文
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LINCOLN', 'TRAIT_12_INDUSTRIAL_ZONE_PRODUCTION_CosLincoln');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_12_INDUSTRIAL_ZONE_PRODUCTION_CosLincoln' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 'DISTRICT_IS_INDUSTRIAL_ZONE_12_CosLincoln');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('DISTRICT_IS_INDUSTRIAL_ZONE_12_CosLincoln' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('DISTRICT_IS_INDUSTRIAL_ZONE_12_CosLincoln' , 'REQUIRES_POPULATION_12_CosChina'),
('DISTRICT_IS_INDUSTRIAL_ZONE_12_CosLincoln' , 'REQUIRES_DISTRICT_IS_INDUSTRIAL_ZONE');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_POPULATION_12_CosChina' , 'REQUIREMENT_CITY_HAS_X_POPULATION');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
('REQUIRES_POPULATION_12_CosChina' , 'Amount', '12');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_12_INDUSTRIAL_ZONE_PRODUCTION_CosLincoln', 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_12_INDUSTRIAL_ZONE_PRODUCTION_CosLincoln', 'Amount', '1');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LINCOLN', 'TRAIT_12_INDUSTRIAL_ZONE_CULTURE_CosLincoln');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_12_INDUSTRIAL_ZONE_CULTURE_CosLincoln' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 'DISTRICT_IS_INDUSTRIAL_ZONE_12_CosLincoln');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_12_INDUSTRIAL_ZONE_CULTURE_CosLincoln', 'YieldType', 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_12_INDUSTRIAL_ZONE_CULTURE_CosLincoln', 'Amount', '1');
--16人口工业区1锤1文
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LINCOLN', 'TRAIT_16_INDUSTRIAL_ZONE_PRODUCTION_CosLincoln');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_16_INDUSTRIAL_ZONE_PRODUCTION_CosLincoln' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 'DISTRICT_IS_INDUSTRIAL_ZONE_16_CosLincoln');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('DISTRICT_IS_INDUSTRIAL_ZONE_16_CosLincoln' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('DISTRICT_IS_INDUSTRIAL_ZONE_16_CosLincoln' , 'REQUIRES_POPULATION_16_CosChina'),
('DISTRICT_IS_INDUSTRIAL_ZONE_16_CosLincoln' , 'REQUIRES_DISTRICT_IS_INDUSTRIAL_ZONE');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_POPULATION_16_CosChina' , 'REQUIREMENT_CITY_HAS_X_POPULATION');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
('REQUIRES_POPULATION_16_CosChina' , 'Amount', '16');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_16_INDUSTRIAL_ZONE_PRODUCTION_CosLincoln', 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_16_INDUSTRIAL_ZONE_PRODUCTION_CosLincoln', 'Amount', '1');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LINCOLN', 'TRAIT_16_INDUSTRIAL_ZONE_CULTURE_CosLincoln');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_16_INDUSTRIAL_ZONE_CULTURE_CosLincoln' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 'DISTRICT_IS_INDUSTRIAL_ZONE_16_CosLincoln');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_16_INDUSTRIAL_ZONE_CULTURE_CosLincoln', 'YieldType', 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_16_INDUSTRIAL_ZONE_CULTURE_CosLincoln', 'Amount', '1');
--20人口工业区1锤1文
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LINCOLN', 'TRAIT_20_INDUSTRIAL_ZONE_PRODUCTION_CosLincoln');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_20_INDUSTRIAL_ZONE_PRODUCTION_CosLincoln' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 'DISTRICT_IS_INDUSTRIAL_ZONE_20_CosLincoln');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('DISTRICT_IS_INDUSTRIAL_ZONE_20_CosLincoln' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('DISTRICT_IS_INDUSTRIAL_ZONE_20_CosLincoln' , 'REQUIRES_POPULATION_20'),
('DISTRICT_IS_INDUSTRIAL_ZONE_20_CosLincoln' , 'REQUIRES_DISTRICT_IS_INDUSTRIAL_ZONE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_20_INDUSTRIAL_ZONE_PRODUCTION_CosLincoln', 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_20_INDUSTRIAL_ZONE_PRODUCTION_CosLincoln', 'Amount', '1');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_LINCOLN', 'TRAIT_20_INDUSTRIAL_ZONE_CULTURE_CosLincoln');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_20_INDUSTRIAL_ZONE_CULTURE_CosLincoln' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 'DISTRICT_IS_INDUSTRIAL_ZONE_20_CosLincoln');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_20_INDUSTRIAL_ZONE_CULTURE_CosLincoln', 'YieldType', 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_20_INDUSTRIAL_ZONE_CULTURE_CosLincoln', 'Amount', '1');
--电影制片厂--
--+1宜居度
UPDATE Buildings SET Entertainment=1 WHERE BuildingType='BUILDING_FILM_STUDIO';
--提供等同于相邻加成的金币
INSERT INTO Building_YieldDistrictCopies (BuildingType, OldYieldType, NewYieldType)
	VALUES ('BUILDING_FILM_STUDIO', 'YIELD_CULTURE', 'YIELD_GOLD');