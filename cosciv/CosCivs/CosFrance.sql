--法国
--大科多用一次
INSERT INTO TraitModifiers (TraitType, ModifierId) 
    VALUES ('TRAIT_CIVILIZATION_WONDER_TOURISM', 'TRAIT_ADJUST_SCIENTIST_CHARGES_CosFrance');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_ADJUST_SCIENTIST_CHARGES_CosFrance' , 'MODIFIER_PLAYER_UNITS_ADJUST_GREAT_PERSON_CHARGES', 'UNIT_IS_SCIENTIST_CosFrance');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('UNIT_IS_SCIENTIST_CosFrance' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('UNIT_IS_SCIENTIST_CosFrance' , 'REQUIREMENT_UNIT_IS_SCIENTIST_CosFrance');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIREMENT_UNIT_IS_SCIENTIST_CosFrance' , 'REQUIREMENT_GREAT_PERSON_TYPE_MATCHES');
INSERT INTO RequirementArguments (RequirementId, Name, Value)
	VALUES ('REQUIREMENT_UNIT_IS_SCIENTIST_CosFrance' , 'GreatPersonClassType' , 'GREAT_PERSON_CLASS_SCIENTIST');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_ADJUST_SCIENTIST_CHARGES_CosFrance' , 'Amount' , '1');
--大商多用一次
INSERT INTO TraitModifiers (TraitType, ModifierId) 
    VALUES ('TRAIT_CIVILIZATION_WONDER_TOURISM', 'TRAIT_ADJUST_MERCHANT_CHARGES_CosFrance');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_ADJUST_MERCHANT_CHARGES_CosFrance' , 'MODIFIER_PLAYER_UNITS_ADJUST_GREAT_PERSON_CHARGES', 'UNIT_IS_MERCHANT_CosFrance');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('UNIT_IS_MERCHANT_CosFrance' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('UNIT_IS_MERCHANT_CosFrance' , 'REQUIREMENT_UNIT_IS_MERCHANT_CosFrance');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIREMENT_UNIT_IS_MERCHANT_CosFrance' , 'REQUIREMENT_GREAT_PERSON_TYPE_MATCHES');
INSERT INTO RequirementArguments (RequirementId, Name, Value)
	VALUES ('REQUIREMENT_UNIT_IS_MERCHANT_CosFrance' , 'GreatPersonClassType' , 'GREAT_PERSON_CLASS_MERCHANT');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_ADJUST_MERCHANT_CHARGES_CosFrance' , 'Amount' , '1');
--大军多用一次
INSERT INTO TraitModifiers (TraitType, ModifierId) 
    VALUES ('TRAIT_CIVILIZATION_WONDER_TOURISM', 'TRAIT_ADJUST_GENERAL_CHARGES_CosFrance');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_ADJUST_GENERAL_CHARGES_CosFrance' , 'MODIFIER_PLAYER_UNITS_ADJUST_GREAT_PERSON_CHARGES', 'UNIT_IS_GENERAL_CosFrance');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('UNIT_IS_GENERAL_CosFrance' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('UNIT_IS_GENERAL_CosFrance' , 'REQUIREMENT_UNIT_IS_GENERAL_CosFrance');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIREMENT_UNIT_IS_GENERAL_CosFrance' , 'REQUIREMENT_GREAT_PERSON_TYPE_MATCHES');
INSERT INTO RequirementArguments (RequirementId, Name, Value)
	VALUES ('REQUIREMENT_UNIT_IS_GENERAL_CosFrance' , 'GreatPersonClassType' , 'GREAT_PERSON_CLASS_GENERAL');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_ADJUST_GENERAL_CHARGES_CosFrance' , 'Amount' , '1');
--黑法--
--造间谍加速
INSERT INTO TraitModifiers (TraitType, ModifierId) 
	VALUES ('FLYING_SQUADRON_TRAIT','TRAIT_SPY_PRODUCTION_CosFrance');
INSERT INTO Modifiers (ModifierId, ModifierType)
	VALUES ('TRAIT_SPY_PRODUCTION_CosFrance', 'MODIFIER_PLAYER_UNITS_ADJUST_UNIT_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name , Value)
	VALUES ('TRAIT_SPY_PRODUCTION_CosFrance', 'UnitType','UNIT_SPY');
INSERT INTO ModifierArguments (ModifierId, Name , Value)
	VALUES ('TRAIT_SPY_PRODUCTION_CosFrance', 'Amount','100');

INSERT INTO TraitModifiers (TraitType, ModifierId) 
	VALUES ('FLYING_SQUADRON_TRAIT','TRAIT_SPY_PRODUCTION_NOT_FOUNDED_CosFrance');
INSERT INTO Types (Type,Kind) 
	VALUES ('MODIFIER_PLAYER_CITIES_ADJUST_UNIT_PRODUCTION_CosFrance', 'KIND_MODIFIER');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES ('TRAIT_SPY_PRODUCTION_NOT_FOUNDED_CosFrance', 'MODIFIER_PLAYER_CITIES_ADJUST_UNIT_PRODUCTION_CosFrance', 'CITY_NOT_FOUNDED');
INSERT INTO DynamicModifiers (ModifierType, CollectionType, EffectType)
	VALUES ('MODIFIER_PLAYER_CITIES_ADJUST_UNIT_PRODUCTION_CosFrance', 'COLLECTION_PLAYER_CITIES', 'EFFECT_ADJUST_UNIT_PRODUCTION');	
INSERT INTO ModifierArguments (ModifierId, Name , Value)
	VALUES ('TRAIT_SPY_PRODUCTION_NOT_FOUNDED_CosFrance', 'UnitType','UNIT_SPY');
INSERT INTO ModifierArguments (ModifierId, Name , Value)
	VALUES ('TRAIT_SPY_PRODUCTION_NOT_FOUNDED_CosFrance', 'Amount','100');
--间谍容量变成加三
UPDATE ModifierArguments SET Value='3' WHERE ModifierId='UNIQUE_LEADER_ADD_SPY_CAPACITY' AND Name='Amount';
--白法--
--所有资源（不论是否改良）享受加成
UPDATE RequirementSetRequirements SET RequirementId='PLOT_HAS_RESOURCE_REQUIREMENTS' WHERE RequirementSetId='PLOT_LUXURY_ADJACENT_TO_THEATER_SQUARE_OR_CHATEAU_REQUIREMENTS' AND RequirementId='REQUIRES_PLOT_HAS_IMPROVED_LUXURY';
--项目生产力减少
UPDATE Projects SET Cost=45 WHERE ProjectType='PROJECT_COURT_FESTIVAL';
--埃莉诺--
--纪念碑加一巨作槽位
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_LEADER_ELEANOR_LOYALTY' , 'ELEANOR_MONUMENT_GREATWORK_SLOTS_CosFrance');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('ELEANOR_MONUMENT_GREATWORK_SLOTS_CosFrance' , 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_GREAT_WORK_SLOTS', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('ELEANOR_MONUMENT_GREATWORK_SLOTS_CosFrance' , 'BuildingType', 'BUILDING_MONUMENT');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('ELEANOR_MONUMENT_GREATWORK_SLOTS_CosFrance' , 'GreatWorkSlotType', 'GREATWORKSLOT_PALACE');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('ELEANOR_MONUMENT_GREATWORK_SLOTS_CosFrance' , 'Amount', '1');
--纪念碑加一大作家点数
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_LEADER_ELEANOR_LOYALTY' , 'TRAIT_GREAT_WRITER_MONUMENT_MODIFIER_CosFrance');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_GREAT_WRITER_MONUMENT_MODIFIER_CosFrance' , 'MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT', 'BUILDING_IS_MONUMENT_CosFrance');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('BUILDING_IS_MONUMENT_CosFrance' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('BUILDING_IS_MONUMENT_CosFrance' , 'REQUIRES_CITY_HAS_MONUMENT_CosFrance');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_CITY_HAS_MONUMENT_CosFrance' , 'REQUIREMENT_CITY_HAS_BUILDING');
INSERT INTO RequirementArguments (RequirementId, Name, Value)
	VALUES ('REQUIRES_CITY_HAS_MONUMENT_CosFrance' , 'BuildingType' , 'BUILDING_MONUMENT');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_GREAT_WRITER_MONUMENT_MODIFIER_CosFrance' , 'GreatPersonClassType', 'GREAT_PERSON_CLASS_WRITER');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_GREAT_WRITER_MONUMENT_MODIFIER_CosFrance' , 'Amount', '1');
--戏剧诗歌纪念碑加一大艺术家点数
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_LEADER_ELEANOR_LOYALTY' , 'TRAIT_GREAT_ARTIST_MONUMENT_MODIFIER_CosFrance');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_GREAT_ARTIST_MONUMENT_MODIFIER_CosFrance' , 'MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT', 'BUILDING_IS_MONUMENT_DRAMA_POETRY_CosFrance');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_GREAT_ARTIST_MONUMENT_MODIFIER_CosFrance' , 'GreatPersonClassType', 'GREAT_PERSON_CLASS_ARTIST');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_GREAT_ARTIST_MONUMENT_MODIFIER_CosFrance' , 'Amount', '1');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('BUILDING_IS_MONUMENT_DRAMA_POETRY_CosFrance' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('BUILDING_IS_MONUMENT_DRAMA_POETRY_CosFrance', 'REQUIRES_CITY_HAS_MONUMENT_CosFrance'),
('BUILDING_IS_MONUMENT_DRAMA_POETRY_CosFrance', 'REQUIRES_PLAYER_HAS_DRAMA_POETRY_CosFrance');
INSERT INTO Requirements (RequirementId , RequirementType) VALUES
('REQUIRES_PLAYER_HAS_DRAMA_POETRY_CosFrance' , 'REQUIREMENT_PLAYER_HAS_CIVIC');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
('REQUIRES_PLAYER_HAS_DRAMA_POETRY_CosFrance' , 'CivicType' , 'CIVIC_DRAMA_POETRY');
--人文纪念碑加一大音乐家点数
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_LEADER_ELEANOR_LOYALTY' , 'TRAIT_GREAT_MUSICIAN_MONUMENT_MODIFIER_CosFrance');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_GREAT_MUSICIAN_MONUMENT_MODIFIER_CosFrance' , 'MODIFIER_PLAYER_CITIES_ADJUST_GREAT_PERSON_POINT', 'BUILDING_IS_MONUMENT_HUMANISM_CosFrance');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_GREAT_MUSICIAN_MONUMENT_MODIFIER_CosFrance' , 'GreatPersonClassType', 'GREAT_PERSON_CLASS_MUSICIAN');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_GREAT_MUSICIAN_MONUMENT_MODIFIER_CosFrance' , 'Amount', '1');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('BUILDING_IS_MONUMENT_HUMANISM_CosFrance' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('BUILDING_IS_MONUMENT_HUMANISM_CosFrance', 'REQUIRES_CITY_HAS_MONUMENT_CosFrance'),
('BUILDING_IS_MONUMENT_HUMANISM_CosFrance', 'REQUIRES_PLAYER_HAS_HUMANISM_CosFrance');
INSERT INTO Requirements (RequirementId , RequirementType) VALUES
('REQUIRES_PLAYER_HAS_HUMANISM_CosFrance' , 'REQUIREMENT_PLAYER_HAS_CIVIC');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
('REQUIRES_PLAYER_HAS_HUMANISM_CosFrance' , 'CivicType' , 'CIVIC_HUMANISM');
--降低更多忠诚度
UPDATE ModifierArguments SET Value='2' WHERE ModifierId='IDENTITY_NEARBY_GREATWORKS' AND Name='Amount';

--城堡--
--封建主义解锁
UPDATE Improvements SET PrereqCivic='CIVIC_FEUDALISM' WHERE ImprovementType='IMPROVEMENT_CHATEAU';
--基础加一锤
INSERT INTO Improvement_YieldChanges (ImprovementType , YieldType,YieldChange)
	VALUES ('IMPROVEMENT_CHATEAU' , 'YIELD_PRODUCTION' , 1);
--基础额外加一金
UPDATE Improvement_YieldChanges SET YieldChange=2 WHERE ImprovementType='IMPROVEMENT_CHATEAU' AND YieldType='YIELD_GOLD';
--加一住房
UPDATE Improvements SET Housing=1 WHERE ImprovementType='IMPROVEMENT_CHATEAU';
--不必相邻加成或奢侈
UPDATE Improvements SET RequiresAdjacentBonusOrLuxury=0 WHERE ImprovementType='IMPROVEMENT_CHATEAU';