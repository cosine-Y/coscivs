--波斯
--总督就职城市+1贸易路线容量
INSERT INTO TraitModifiers (TraitType , ModifierId) VALUES
('TRAIT_CIVILIZATION_SATRAPIES' , 'TRADE_ROUTE_GOVERNOR_CosPersia');
INSERT INTO Modifiers (ModifierId , ModifierType , SubjectRequirementSetId) VALUES
('TRADE_ROUTE_GOVERNOR_CosPersia', 'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_CAPACITY', 'CITY_HAS_GOVERNOR');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('TRADE_ROUTE_GOVERNOR_CosPersia', 'Amount', '1');
--庭院--
--加文化提前至行政
UPDATE Improvement_BonusYieldChanges SET PrereqCivic ='CIVIC_CIVIL_SERVICE' WHERE ImprovementType='IMPROVEMENT_PAIRIDAEZA'; 
--+1住房
UPDATE Improvements SET Housing=1 WHERE ImprovementType='IMPROVEMENT_PAIRIDAEZA';
--每有一个庭院本城庭院+1金币
INSERT INTO ImprovementModifiers (ImprovementType, ModifierID) VALUES 
    ('IMPROVEMENT_PAIRIDAEZA', 'PAIRIDAEZA_GOLD_CosPersia');
INSERT INTO Modifiers (ModifierId , ModifierType , SubjectRequirementSetId) VALUES
('PAIRIDAEZA_GOLD_CosPersia', 'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD', 'PLOT_HAS_PAIRIDAEZA_REQUIREMENTS_CosCosPersia');	
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_PAIRIDAEZA_REQUIREMENTS_CosCosPersia' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_PAIRIDAEZA_REQUIREMENTS_CosCosPersia' , 'REQUIRES_PLOT_HAS_PAIRIDAEZA_CosCosPersia');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_PLOT_HAS_PAIRIDAEZA_CosCosPersia' , 'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES');
INSERT INTO RequirementArguments (RequirementId, Name, Value)
	VALUES ('REQUIRES_PLOT_HAS_PAIRIDAEZA_CosCosPersia' , 'ImprovementType' , 'IMPROVEMENT_PAIRIDAEZA');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PAIRIDAEZA_GOLD_CosPersia', 'YieldType', 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PAIRIDAEZA_GOLD_CosPersia', 'Amount', '1');
--可以建在冻土上
INSERT INTO Improvement_ValidTerrains (ImprovementType, TerrainType)
	VALUES ('IMPROVEMENT_PAIRIDAEZA' , 'TERRAIN_TUNDRA_HILLS');
INSERT INTO Improvement_ValidTerrains (ImprovementType, TerrainType)
	VALUES ('IMPROVEMENT_PAIRIDAEZA' , 'TERRAIN_TUNDRA');
--居鲁士--
--进攻+3力
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES
('TRAIT_LEADER_FALL_BABYLON', 'TRAIT_FALLBABYLON_ATTACK_BONUS_CosPersia');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('TRAIT_FALLBABYLON_ATTACK_BONUS_CosPersia', 'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_STRENGTH', 'ATTACKING_REQUIREMENT_CosPersia');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('TRAIT_FALLBABYLON_ATTACK_BONUS_CosPersia', 'Amount', '3');
INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES
('TRAIT_FALLBABYLON_ATTACK_BONUS_CosPersia', 'Preview', 'LOC_TRAIT_FALLBABYLON_ATTACK_BONUS_DESCRIPTION_CosPersia');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType) VALUES
('ATTACKING_REQUIREMENT_CosPersia', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('ATTACKING_REQUIREMENT_CosPersia', 'PLAYER_IS_ATTACKER_REQUIREMENTS');
--纳迪尔沙--
--打满血+7力
UPDATE ModifierArguments SET Value='7' WHERE ModifierId='NADER_SHAH_COMBAT_BUFF';
--掠夺消耗1移动力
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES
('TRAIT_LEADER_NADER_SHAH', 'NADER_SHAH_LESS_MOVEMENT_PILLAGE_CosPersia');
INSERT INTO Modifiers (ModifierId, ModifierType, Permanent) VALUES
('NADER_SHAH_LESS_MOVEMENT_PILLAGE_CosPersia', 'MODIFIER_PLAYER_UNITS_GRANT_ABILITY', 1);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('NADER_SHAH_LESS_MOVEMENT_PILLAGE_CosPersia', 'AbilityType', 'ABILITY_LESS_MOVEMENT_PILLAGE_CosPersia');
INSERT INTO Types (Type, Kind)
	VALUES ('ABILITY_LESS_MOVEMENT_PILLAGE_CosPersia', 'KIND_ABILITY');
INSERT INTO TypeTags (Type, Tag)
	VALUES ('ABILITY_LESS_MOVEMENT_PILLAGE_CosPersia', 'CLASS_ALL_COMBAT_UNITS'); 
INSERT INTO UnitAbilities (UnitAbilityType, Name ,Description ,Inactive)
	VALUES ('ABILITY_LESS_MOVEMENT_PILLAGE_CosPersia', 'LOC_LESS_MOVEMENT_PILLAGE_CosPersia','LOC_ABILITY_LESS_MOVEMENT_PILLAGE_DESCRIPTION_CosPersia',1);
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES 
    ('ABILITY_LESS_MOVEMENT_PILLAGE_CosPersia', 'LESS_MOVEMENT_PILLAGE_CosPersia');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 	
    ('LESS_MOVEMENT_PILLAGE_CosPersia', 'MODIFIER_PLAYER_UNIT_ADJUST_ADVANCED_PILLAGING', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('LESS_MOVEMENT_PILLAGE_CosPersia' , 'UseAdvancedPillaging' , '1');
--占领城市送贸易路线容量
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_NADER_SHAH', 'TRAIT_TRADE_ROUTES_CAPTURED_CITY_CosPersia');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 	
    ('TRAIT_TRADE_ROUTES_CAPTURED_CITY_CosPersia', 'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER', NULL);
INSERT INTO Modifiers (ModifierId , ModifierType , SubjectRequirementSetId , RunOnce , Permanent) VALUES ('TRAIT_TRADE_ROUTES_CAPTURED_CITY_CosPersia_MODIFIER', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY', NULL, 1, 1);	
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_TRADE_ROUTES_CAPTURED_CITY_CosPersia', 'ModifierId', 'TRAIT_TRADE_ROUTES_CAPTURED_CITY_CosPersia_MODIFIER');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_TRADE_ROUTES_CAPTURED_CITY_CosPersia_MODIFIER', 'Amount', '1');
/* --下城给总督点
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_NADER_SHAH', 'TRAIT_CAPTURED_CITY_GOVERNOR_POINTS_CosPersia');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 	
    ('TRAIT_CAPTURED_CITY_GOVERNOR_POINTS_CosPersia', 'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER', NULL);
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId, RunOnce,Permanent) VALUES ('TRAIT_CAPTURED_CITY_GOVERNOR_POINTS_CosPersia_MODIFIER', 'MODIFIER_PLAYER_ADJUST_GOVERNOR_POINTS', NULL, 1,1);	
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_CAPTURED_CITY_GOVERNOR_POINTS_CosPersia', 'ModifierId', 'TRAIT_CAPTURED_CITY_GOVERNOR_POINTS_CosPersia_MODIFIER');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_CAPTURED_CITY_GOVERNOR_POINTS_CosPersia_MODIFIER', 'Delta', '1'); */
--长生军--
--+1移速，远程力提高
UPDATE Units SET RangedCombat=30,BaseMoves=3 WHERE UnitType='UNIT_PERSIAN_IMMORTAL';
--不取代剑客
DELETE FROM UnitReplaces WHERE CivUniqueUnitType='UNIT_PERSIAN_IMMORTAL';
--升级为火枪
UPDATE UnitUpgrades SET UpgradeUnit='UNIT_MUSKETMAN' WHERE Unit='UNIT_PERSIAN_IMMORTAL';
--每回合回血
INSERT INTO TypeTags(Type, Tag) VALUES
('UNIT_PERSIAN_IMMORTAL', 'CLASS_MAMLUK');
