--格鲁吉亚
--建墙加速百分百,堡垒额外百分百
UPDATE ModifierArguments SET Value='100' WHERE ModifierId='TRAIT_WALLS_PRODUCTION' AND Name='Amount';
UPDATE ModifierArguments SET Value='100' WHERE ModifierId='TRAIT_CASTLE_PRODUCTION' AND Name='Amount';
UPDATE ModifierArguments SET Value='100' WHERE ModifierId='TRAIT_STAR_FORT_PRODUCTION' AND Name='Amount';
UPDATE ModifierArguments SET Value='100' WHERE ModifierId='TRAIT_TSIKHE_PRODUCTION' AND Name='Amount';
--所有城墙加1宜居度、使本城+1全产
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_GOLDEN_AGE_QUESTS' , 'TRAIT_AWALLS_AMENITIES_CosGeorgia');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_AWALLS_AMENITIES_CosGeorgia' , 'MODIFIER_PLAYER_CITIES_ADJUST_TRAIT_AMENITY', 'CITY_HAS_ANCIENT_WALLS');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_AWALLS_AMENITIES_CosGeorgia' , 'Amount', '1');

INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_GOLDEN_AGE_QUESTS' , 'TRAIT_AWALLS_YIELDS_CosGeorgia');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_AWALLS_YIELDS_CosGeorgia' , 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_ALL_YIELDS_CHANGE', 'CITY_HAS_ANCIENT_WALLS');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_AWALLS_YIELDS_CosGeorgia' , 'Amount', '1');

INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_GOLDEN_AGE_QUESTS' , 'TRAIT_MWALLS_AMENITIES_CosGeorgia');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_MWALLS_AMENITIES_CosGeorgia' , 'MODIFIER_PLAYER_CITIES_ADJUST_TRAIT_AMENITY', 'CITY_HAS_MEDIEVAL_WALLS');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_MWALLS_AMENITIES_CosGeorgia' , 'Amount', '1');

INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_GOLDEN_AGE_QUESTS' , 'TRAIT_MWALLS_YIELDS_CosGeorgia');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_MWALLS_YIELDS_CosGeorgia' , 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_ALL_YIELDS_CHANGE', 'CITY_HAS_MEDIEVAL_WALLS');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_MWALLS_YIELDS_CosGeorgia' , 'Amount', '1');

INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_GOLDEN_AGE_QUESTS' , 'TRAIT_RWALLS_AMENITIES_CosGeorgia');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_RWALLS_AMENITIES_CosGeorgia' , 'MODIFIER_PLAYER_CITIES_ADJUST_TRAIT_AMENITY', 'CITY_HAS_RENAISSANCE_WALLS');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_RWALLS_AMENITIES_CosGeorgia' , 'Amount', '1');

INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_GOLDEN_AGE_QUESTS' , 'TRAIT_RWALLS_YIELDS_CosGeorgia');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_RWALLS_YIELDS_CosGeorgia' , 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_ALL_YIELDS_CHANGE', 'CITY_HAS_RENAISSANCE_WALLS');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_RWALLS_YIELDS_CosGeorgia' , 'Amount', '1');

--塔玛丽--
--每位使者+1信仰
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_LEADER_RELIGION_CITY_STATES' , 'INFLUENCETOKENFAITH_CosGeorgia');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('INFLUENCETOKENFAITH_CosGeorgia' , 'MODIFIER_PLAYER_ADJUST_YIELD_CHANGE_PER_USED_INFLUENCE_TOKEN', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('INFLUENCETOKENFAITH_CosGeorgia' , 'YieldType', 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('INFLUENCETOKENFAITH_CosGeorgia' , 'Amount', '1');
--创立宗教获得2名使者
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_LEADER_RELIGION_CITY_STATES' , 'INFLUENCETOKEN_FOUND_RELIGION_CosGeorgia');
INSERT INTO Modifiers (ModifierId , ModifierType , SubjectRequirementSetId , RunOnce , Permanent) VALUES ('INFLUENCETOKEN_FOUND_RELIGION_CosGeorgia', 'MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN', 'PLAYER_FOUNDED_RELIGION_CosGeorgia', 1, 1);	
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('INFLUENCETOKEN_FOUND_RELIGION_CosGeorgia' , 'Amount' , '2');	
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLAYER_FOUNDED_RELIGION_CosGeorgia' , 'REQUIREMENTSET_TEST_ALL');	
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLAYER_FOUNDED_RELIGION_CosGeorgia', 'REQUIRES_PLAYER_HAS_FOUNDED_A_RELIGION');

--堡垒--
--城堡解锁
UPDATE Buildings SET PrereqTech='TECH_CASTLES' WHERE BuildingType='BUILDING_TSIKHE';
--价格更低
UPDATE Buildings SET Cost=200 WHERE BuildingType='BUILDING_TSIKHE';
--黄金时代信仰和旅游业绩翻3倍
UPDATE ModifierArguments SET Value=8 WHERE ModifierId = 'TSIKHE_FAITH_GOLDEN_AGE' AND Name='Amount';
UPDATE ModifierArguments SET Value=6 WHERE ModifierId = 'CONSERVATION_TSIKHE_TOURISM_GOLDEN_AGE' AND Name='Amount';
--使所有堡垒+1信仰
INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES 
    ('BUILDING_TSIKHE', 'TSIKHE_TSIKHE_FAITH_CosGeorgia');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES
('TSIKHE_TSIKHE_FAITH_CosGeorgia', 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE');
INSERT INTO ModifierArguments (ModifierId, Name ,Value) VALUES
('TSIKHE_TSIKHE_FAITH_CosGeorgia', 'BuildingType', 'BUILDING_TSIKHE'),
('TSIKHE_TSIKHE_FAITH_CosGeorgia', 'YieldType', 'YIELD_FAITH'),
('TSIKHE_TSIKHE_FAITH_CosGeorgia', 'Amount', '1');

--关联丘陵
INSERT INTO StartBiasTerrains (CivilizationType, TerrainType, Tier)
	VALUES ('CIVILIZATION_GEORGIA', 'TERRAIN_GRASS_HILLS', 4);
INSERT INTO StartBiasTerrains (CivilizationType, TerrainType, Tier)
	VALUES ('CIVILIZATION_GEORGIA', 'TERRAIN_PLAINS_HILLS', 4);
--关联采石场资源
INSERT INTO StartBiasResources (CivilizationType, ResourceType, Tier)
	VALUES ('CIVILIZATION_GEORGIA', 'RESOURCE_STONE', 5);
INSERT INTO StartBiasResources (CivilizationType, ResourceType, Tier)
	VALUES ('CIVILIZATION_GEORGIA', 'RESOURCE_MARBLE', 5);
INSERT INTO StartBiasResources (CivilizationType, ResourceType, Tier)
	VALUES ('CIVILIZATION_GEORGIA', 'RESOURCE_GYPSUM', 4);