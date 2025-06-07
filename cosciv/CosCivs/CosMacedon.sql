--马其顿
--占领有军营城市后，所有军营+2科
INSERT INTO TraitModifiers (TraitType, ModifierId) 
    VALUES ('TRAIT_CIVILIZATION_HELLENISTIC_FUSION', 'ENCAMPMENT_SCIENCE_CosMacedon');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 	
    ('ENCAMPMENT_SCIENCE_CosMacedon', 'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER', 'CITY_HAS_ENCAMPMENT_MACEDON');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('ENCAMPMENT_SCIENCE_CosMacedon', 'ModifierId', 'ENCAMPMENT_SCIENCE_CosMacedon_MODIFIER');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId, RunOnce, Permanent)
	VALUES 	('ENCAMPMENT_SCIENCE_CosMacedon_MODIFIER' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 'DISTRICT_IS_ENCAMPMENT',1,1);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('ENCAMPMENT_SCIENCE_CosMacedon_MODIFIER' , 'YieldType', 'YIELD_SCIENCE'),
('ENCAMPMENT_SCIENCE_CosMacedon_MODIFIER' , 'Amount' , '2');
--占领有学院城市后，所有学院+2科
INSERT INTO TraitModifiers (TraitType, ModifierId) 
    VALUES ('TRAIT_CIVILIZATION_HELLENISTIC_FUSION', 'CAMPUS_SCIENCE_CosMacedon');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 	
    ('CAMPUS_SCIENCE_CosMacedon', 'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER', 'CITY_HAS_CAMPUS_MACEDON');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('CAMPUS_SCIENCE_CosMacedon', 'ModifierId', 'CAMPUS_SCIENCE_CosMacedon_MODIFIER');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId, RunOnce, Permanent)
	VALUES 	('CAMPUS_SCIENCE_CosMacedon_MODIFIER' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 'DISTRICT_IS_CAMPUS',1,1);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('CAMPUS_SCIENCE_CosMacedon_MODIFIER' , 'YieldType', 'YIELD_SCIENCE'),
('CAMPUS_SCIENCE_CosMacedon_MODIFIER' , 'Amount' , '2');
--占领有圣地城市后，所有圣地+2文
INSERT INTO TraitModifiers (TraitType, ModifierId) 
    VALUES ('TRAIT_CIVILIZATION_HELLENISTIC_FUSION', 'HOLY_SITE_CULTURE_CosMacedon');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 	
    ('HOLY_SITE_CULTURE_CosMacedon', 'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER', 'CITY_HAS_HOLY_SITE_MACEDON');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('HOLY_SITE_CULTURE_CosMacedon', 'ModifierId', 'HOLY_SITE_CULTURE_CosMacedon_MODIFIER');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId, RunOnce, Permanent)
	VALUES 	('HOLY_SITE_CULTURE_CosMacedon_MODIFIER' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 'DISTRICT_IS_HOLY_SITE',1,1);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('HOLY_SITE_CULTURE_CosMacedon_MODIFIER' , 'YieldType', 'YIELD_CULTURE'),
('HOLY_SITE_CULTURE_CosMacedon_MODIFIER' , 'Amount' , '2');
--占领有剧院城市后，所有剧院+2文
INSERT INTO TraitModifiers (TraitType, ModifierId) 
    VALUES ('TRAIT_CIVILIZATION_HELLENISTIC_FUSION', 'THEATER_CULTURE_CosMacedon');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 	
    ('THEATER_CULTURE_CosMacedon', 'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER', 'CITY_HAS_THEATER_DISTRICT_MACEDON');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('THEATER_CULTURE_CosMacedon', 'ModifierId', 'THEATER_CULTURE_CosMacedon_MODIFIER');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId, RunOnce, Permanent)
	VALUES 	('THEATER_CULTURE_CosMacedon_MODIFIER' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE', 'DISTRICT_IS_THEATER',1,1);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('THEATER_CULTURE_CosMacedon_MODIFIER' , 'YieldType', 'YIELD_CULTURE'),
('THEATER_CULTURE_CosMacedon_MODIFIER' , 'Amount' , '2');
--亚历山大--
--额外50%大军点
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_LEADER_TO_WORLDS_END' , 'MORE_GREAT_GENERAL_CosMacedon');
INSERT INTO Modifiers (ModifierId , ModifierType, SubjectRequirementSetId)
	VALUES ('MORE_GREAT_GENERAL_CosMacedon', 'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS_PERCENT', NULL);
INSERT INTO ModifierArguments (ModifierId , Name , Value) VALUES
('MORE_GREAT_GENERAL_CosMacedon', 'GreatPersonClassType', 'GREAT_PERSON_CLASS_GENERAL'),
('MORE_GREAT_GENERAL_CosMacedon', 'Amount', '50');
--大将军+2移动力
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_LEADER_TO_WORLDS_END' , 'FASTER_GREAT_GENERAL_CosMacedon');
INSERT INTO Modifiers (ModifierId , ModifierType, SubjectRequirementSetId)
	VALUES ('FASTER_GREAT_GENERAL_CosMacedon', 'MODIFIER_PLAYER_UNITS_ADJUST_MOVEMENT','UNIT_IS_GREAT_GENERAL');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('FASTER_GREAT_GENERAL_CosMacedon', 'Amount', '2');
/* --相邻大将军的单位+1额外远程攻击
INSERT INTO TraitModifiers (TraitType, ModifierId)
	VALUES ('TRAIT_LEADER_TO_WORLDS_END', 'GREAT_GENERAL_ADDITIONAL_ATTACK_CosMacedon');
INSERT INTO Modifiers (ModifierId, ModifierType,Permanent)
	VALUES ('GREAT_GENERAL_ADDITIONAL_ATTACK_CosMacedon', 'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',1);
INSERT INTO ModifierArguments (ModifierId, Name ,Value)
	VALUES ('GREAT_GENERAL_ADDITIONAL_ATTACK_CosMacedon', 'AbilityType','ABILITY_GREAT_GENERAL_ADDITIONAL_ATTACK_CosMacedon');
INSERT INTO Types (Type, Kind)
	VALUES ('ABILITY_GREAT_GENERAL_ADDITIONAL_ATTACK_CosMacedon', 'KIND_ABILITY');
INSERT INTO TypeTags (Type, Tag) VALUES
('ABILITY_GREAT_GENERAL_ADDITIONAL_ATTACK_CosMacedon', 'CLASS_RANGED'),
('ABILITY_GREAT_GENERAL_ADDITIONAL_ATTACK_CosMacedon', 'CLASS_RANGED_CAVALRY'),
('ABILITY_GREAT_GENERAL_ADDITIONAL_ATTACK_CosMacedon', 'CLASS_NAVAL_RANGED'),
('ABILITY_GREAT_GENERAL_ADDITIONAL_ATTACK_CosMacedon', 'CLASS_NAVAL_RAIDER');
INSERT INTO UnitAbilities (UnitAbilityType, Name ,Description ,Inactive)
	VALUES ('ABILITY_GREAT_GENERAL_ADDITIONAL_ATTACK_CosMacedon', 'LOC_ABILITY_GREAT_GENERAL_ADDITIONAL_ATTACK_NAME_CosMacedon','LOC_ABILITY_GREAT_GENERAL_ADDITIONAL_ATTACK_DESCRIPTION_CosMacedon',1);
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId)
	VALUES ('ABILITY_GREAT_GENERAL_ADDITIONAL_ATTACK_CosMacedon','Modifier_GREAT_GENERAL_ADDITIONAL_ATTACK_CosMacedon');
INSERT INTO Modifiers (ModifierId, ModifierType,SubjectRequirementSetId)
	VALUES ('Modifier_GREAT_GENERAL_ADDITIONAL_ATTACK_CosMacedon','MODIFIER_UNIT_ADJUST_NUM_ATTACKS','UNIT_ADJACENT_TO_GREAT_GENERAL_REQUIREMENTS');
INSERT INTO ModifierArguments (ModifierId, Name ,Value)
	VALUES ('Modifier_GREAT_GENERAL_ADDITIONAL_ATTACK_CosMacedon', 'Amount','1'); */
--相邻大将军单元格+2锤
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_TO_WORLDS_END', 'GREAT_GENERAL_PRODUCTION_CosMacedon');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('GREAT_GENERAL_PRODUCTION_CosMacedon' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'UNIT_ADJACENT_TO_GREAT_GENERAL_REQUIREMENTS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('GREAT_GENERAL_PRODUCTION_CosMacedon', 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('GREAT_GENERAL_PRODUCTION_CosMacedon', 'Amount', '2');
--皇家学堂
--+1大科点
INSERT INTO Building_GreatPersonPoints (BuildingType , GreatPersonClassType , PointsPerTurn)
	VALUES ('BUILDING_BASILIKOI_PAIDES', 'GREAT_PERSON_CLASS_SCIENTIST', '1');
--+1大军点
UPDATE Building_GreatPersonPoints SET PointsPerTurn=2 WHERE BuildingType='BUILDING_BASILIKOI_PAIDES' AND GreatPersonClassType='GREAT_PERSON_CLASS_GENERAL';
--专家+1科技
INSERT INTO Building_CitizenYieldChanges (BuildingType, YieldType, YieldChange)
	VALUES ('BUILDING_BASILIKOI_PAIDES', 'YIELD_SCIENCE', '1');
--伙友骑兵--
--+2力
UPDATE Units SET Combat=38 WHERE UnitType='UNIT_MACEDONIAN_HETAIROI';