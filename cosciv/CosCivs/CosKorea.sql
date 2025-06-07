--朝鲜
--建造书院施放文化炸弹
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_THREE_KINGDOMS' , 'TRAIT_SEOWON_CULTURE_BOMB_CosKorea');
INSERT INTO Modifiers (ModifierId , ModifierType)
	VALUES ('TRAIT_SEOWON_CULTURE_BOMB_CosKorea', 'MODIFIER_PLAYER_ADD_CULTURE_BOMB_TRIGGER');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('TRAIT_SEOWON_CULTURE_BOMB_CosKorea', 'DistrictType', 'DISTRICT_SEOWON');
--善德--
--写作送总督
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_LEADER_HWARANG' , 'HWARANG_GOVERNOR_POINTS_CosKorea');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, SubjectRequirementSetId)
	VALUES 	('HWARANG_GOVERNOR_POINTS_CosKorea' , 'MODIFIER_PLAYER_ADJUST_GOVERNOR_POINTS', 1, 'PLAYER_HAS_WRITING_TECH_CosKorea');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLAYER_HAS_WRITING_TECH_CosKorea' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLAYER_HAS_WRITING_TECH_CosKorea' , 'REQUIRES_PLAYER_HAS_WRITING_TECH_CosKorea');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_PLAYER_HAS_WRITING_TECH_CosKorea' , 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');
INSERT INTO RequirementArguments (RequirementId, Name, Value)
	VALUES ('REQUIRES_PLAYER_HAS_WRITING_TECH_CosKorea' , 'TechnologyType' , 'TECH_WRITING');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('HWARANG_GOVERNOR_POINTS_CosKorea' , 'Delta', '1');
--加成翻倍
UPDATE ModifierArguments SET Value='6' WHERE ModifierId='TRAIT_ADJUST_CITY_CULTURE_PER_GOVERNOR_TITLE_MODIFIER' and Name='Amount';
UPDATE ModifierArguments SET Value='6' WHERE ModifierId='TRAIT_ADJUST_CITY_SCIENCE_PER_GOVERNOR_TITLE_MODIFIER' and Name='Amount';
--世宗--
--书院加文化
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_LEADER_SEJONG' , 'SEOWON_CULTURE1_CosKorea');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('SEOWON_CULTURE1_CosKorea' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 'DISTRICT_IS_SEOWON_CosKorea');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('DISTRICT_IS_SEOWON_CosKorea' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('DISTRICT_IS_SEOWON_CosKorea' , 'REQUIRES_DISTRICT_IS_SEOWON_CosKorea');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_DISTRICT_IS_SEOWON_CosKorea' , 'REQUIREMENT_DISTRICT_TYPE_MATCHES');
INSERT INTO RequirementArguments (RequirementId, Name, Value)
	VALUES ('REQUIRES_DISTRICT_IS_SEOWON_CosKorea' , 'DistrictType' , 'DISTRICT_SEOWON');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('SEOWON_CULTURE1_CosKorea' , 'YieldType' , 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('SEOWON_CULTURE1_CosKorea' , 'Amount' , '1');
--书院相邻区域加文化
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_LEADER_SEJONG' , 'SEOWON_CULTURE_CosKorea');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('SEOWON_CULTURE_CosKorea' , 'MODIFIER_PLAYER_CITIES_DISTRICT_ADJACENCY', NULL);
/* INSERT INTO Types (Type, Kind) 
	VALUES ('MODIFIER_ALL_CITIES_DISTRICTS_ADJACENCY_CosKorea', 'KIND_MODIFIER');
INSERT INTO DynamicModifiers (ModifierType, CollectionType, EffectType)
	VALUES ('MODIFIER_ALL_CITIES_DISTRICTS_ADJACENCY_CosKorea', 'COLLECTION_PLAYER_CITIES', 'EFFECT_DISTRICT_ADJACENCY'); */
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('SEOWON_CULTURE_CosKorea' , 'DistrictType' , 'DISTRICT_SEOWON');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('SEOWON_CULTURE_CosKorea' , 'YieldType' , 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('SEOWON_CULTURE_CosKorea' , 'Amount' , '1');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('SEOWON_CULTURE_CosKorea' , 'Description' , 'LOC_DISTRICT_DISTRICT_1_CULTURE');
