--阿拉伯
--宫殿+1大预言家点数
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_LAST_PROPHET' , 'TRAIT_GREAT_PROPHET_PALACE_MODIFIER_CosArabia');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_GREAT_PROPHET_PALACE_MODIFIER_CosArabia' , 'MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT', 'BUILDING_IS_PALACE');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_GREAT_PROPHET_PALACE_MODIFIER_CosArabia' , 'GreatPersonClassType', 'GREAT_PERSON_CLASS_PROPHET');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_GREAT_PROPHET_PALACE_MODIFIER_CosArabia' , 'Amount', '1');
--信教外国城市+4科技
UPDATE ModifierArguments SET Value='4' WHERE ModifierId='TRAIT_SCIENCE_PER_FOREIGN_CITY_FOLLOWING_RELIGION' AND Name='Amount';
--发教送使徒
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_LAST_PROPHET' , 'APOSTLE_FOUND_RELIGION_CosArabia');
INSERT INTO Modifiers (ModifierId , ModifierType , OwnerRequirementSetId , RunOnce , Permanent) VALUES ('APOSTLE_FOUND_RELIGION_CosArabia', 'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL', 'PLAYER_FOUNDED_RELIGION_HAS_CAPITAL_CosArabia', 1, 1);
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLAYER_FOUNDED_RELIGION_HAS_CAPITAL_CosArabia' , 'REQUIREMENTSET_TEST_ALL');	
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLAYER_FOUNDED_RELIGION_HAS_CAPITAL_CosArabia', 'REQUIRES_PLAYER_HAS_FOUNDED_A_RELIGION');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLAYER_FOUNDED_RELIGION_HAS_CAPITAL_CosArabia', 'REQUIRES_CAPITAL_CITY');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('APOSTLE_FOUND_RELIGION_CosArabia' , 'UnitType' , 'UNIT_APOSTLE');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('APOSTLE_FOUND_RELIGION_CosArabia' , 'Amount' , '1');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('APOSTLE_FOUND_RELIGION_CosArabia' , 'AllowUniqueOverride' , '0');
--维齐尔--
--圣地额外区域位
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_RIGHTEOUSNESS_OF_FAITH', 'TRAIT_HOLY_SITE_EXTRA_DISTRICT_CosArabia');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 	
    ('TRAIT_HOLY_SITE_EXTRA_DISTRICT_CosArabia', 'MODIFIER_PLAYER_CITIES_EXTRA_DISTRICT', 'CITY_HAS_HOLY_SITE');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_HOLY_SITE_EXTRA_DISTRICT_CosArabia' , 'Amount' , '1');
--信仰购买圣地建筑
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_RIGHTEOUSNESS_OF_FAITH', 'TRAIT_FAITH_PURCHASE_HOLY_SITE_BUILDINGS_CosArabia');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 	
    ('TRAIT_FAITH_PURCHASE_HOLY_SITE_BUILDINGS_CosArabia', 'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_FAITH_PURCHASE_HOLY_SITE_BUILDINGS_CosArabia' , 'DistrictType' , 'DISTRICT_HOLY_SITE');
--苏丹--
--信仰买兵
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_SALADIN_ALT', 'GOV_FAITH_PURCHASE_RECON');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_SALADIN_ALT', 'GOV_FAITH_PURCHASE_MELEE');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_SALADIN_ALT', 'GOV_FAITH_PURCHASE_RANGED');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_SALADIN_ALT', 'GOV_FAITH_PURCHASE_SIEGE');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_SALADIN_ALT', 'GOV_FAITH_PURCHASE_HEAVY_CAVALRY');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_SALADIN_ALT', 'GOV_FAITH_PURCHASE_LIGHT_CAVALRY');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_SALADIN_ALT', 'GOV_FAITH_PURCHASE_RANGED_CAVALRY');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_SALADIN_ALT', 'GOV_FAITH_PURCHASE_ANTI_CAVALRY');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_SALADIN_ALT', 'GOV_FAITH_PURCHASE_HEAVY_CHARIOT');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_SALADIN_ALT', 'GOV_FAITH_PURCHASE_LIGHT_CHARIOT');
--所有单位和宗教单位位于同一格+5力
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_SALADIN_ALT', 'SALADIN_CONQUISTADOR_CosArabia');
INSERT INTO Modifiers (ModifierId, ModifierType, Permanent) VALUES 	
    ('SALADIN_CONQUISTADOR_CosArabia', 'MODIFIER_PLAYER_UNITS_GRANT_ABILITY', 1);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('SALADIN_CONQUISTADOR_CosArabia' , 'AbilityType' , 'ABILITY_CONQUISTADOR_CosArabia');
INSERT INTO Types (Type, Kind)
	VALUES ('ABILITY_CONQUISTADOR_CosArabia', 'KIND_ABILITY');
INSERT INTO TypeTags (Type, Tag)
	VALUES ('ABILITY_CONQUISTADOR_CosArabia', 'CLASS_ALL_COMBAT_UNITS'); 
INSERT INTO UnitAbilities (UnitAbilityType, Name ,Description ,Inactive)
	VALUES ('ABILITY_CONQUISTADOR_CosArabia', 'LOC_ABILITY_CONQUISTADOR_NAME_CosArabia','LOC_ABILITY_CONQUISTADOR_DESCRIPTION_CosArabia',1);
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES 
    ('ABILITY_CONQUISTADOR_CosArabia', 'CONQUISTADOR_SPECIFIC_UNIT_COMBAT_CosArabia');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 	
    ('CONQUISTADOR_SPECIFIC_UNIT_COMBAT_CosArabia', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'CONQUISTADOR_SPECIFIC_UNIT_REQUIREMENTS');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('CONQUISTADOR_SPECIFIC_UNIT_COMBAT_CosArabia' , 'Amount' , '5');
INSERT INTO ModifierStrings (ModifierId, Context, Text)
	VALUES ('CONQUISTADOR_SPECIFIC_UNIT_COMBAT_CosArabia','Preview','LOC_CONQUISTADOR_DESCRIPTION_CosArabia');
--伊斯兰学校--
--专家+1信仰
/* INSERT INTO Building_CitizenYieldChanges (BuildingType, YieldType, YieldChange)
	VALUES ('BUILDING_MADRASA', 'YIELD_SCIENCE', '1'); */
INSERT INTO Building_CitizenYieldChanges (BuildingType, YieldType, YieldChange)
	VALUES ('BUILDING_MADRASA', 'YIELD_FAITH', '1');