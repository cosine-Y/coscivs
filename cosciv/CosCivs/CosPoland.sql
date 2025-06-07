--波兰
--信仰买支援
INSERT INTO TraitModifiers (TraitType , ModifierId) VALUES 
('TRAIT_CIVILIZATION_GOLDEN_LIBERTY' , 'FAITH_PURCHASE_SUPPORT_CosPoland');
INSERT INTO Modifiers (ModifierId , ModifierType) VALUES 
('FAITH_PURCHASE_SUPPORT_CosPoland' , 'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE');
INSERT INTO ModifierArguments (ModifierId , Name , Value) VALUES 
('FAITH_PURCHASE_SUPPORT_CosPoland' , 'Tag', 'CLASS_SUPPORT');
--支援单位+2速
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_GOLDEN_LIBERTY' , 'FASTER_SUPPORT_CosPoland');
INSERT INTO Modifiers (ModifierId , ModifierType ,SubjectRequirementSetId)
	VALUES ('FASTER_SUPPORT_CosPoland', 'MODIFIER_PLAYER_UNITS_ADJUST_MOVEMENT','UNIT_IS_SUPPORT_Cos');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('UNIT_IS_SUPPORT_Cos' , 'REQUIRES_UNIT_IS_SUPPORT_Cos');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('UNIT_IS_SUPPORT_Cos' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_UNIT_IS_SUPPORT_Cos' , 'REQUIREMENT_UNIT_PROMOTION_CLASS_MATCHES');
INSERT INTO RequirementArguments (RequirementId , Name , Value)
	VALUES ('REQUIRES_UNIT_IS_SUPPORT_Cos' , 'UnitPromotionClass' , 'PROMOTION_CLASS_SUPPORT');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('FASTER_SUPPORT_CosPoland', 'Amount', '2');
--堡垒+2锤
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_GOLDEN_LIBERTY', 'FORT_PRODUCTION_CosPoland');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('FORT_PRODUCTION_CosPoland' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_FORT_REQUIREMENTS_CosPoland');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('FORT_PRODUCTION_CosPoland', 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('FORT_PRODUCTION_CosPoland', 'Amount', '2');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_FORT_REQUIREMENTS_CosPoland' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_FORT_REQUIREMENTS_CosPoland' , 'REQUIRES_PLOT_HAS_FORT_CosPoland');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_PLOT_HAS_FORT_CosPoland' , 'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
('REQUIRES_PLOT_HAS_FORT_CosPoland' , 'ImprovementType', 'IMPROVEMENT_FORT');
--堡垒+2鸽
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_GOLDEN_LIBERTY', 'FORT_FAITH_CosPoland');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('FORT_FAITH_CosPoland' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_FORT_REQUIREMENTS_CosPoland');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('FORT_FAITH_CosPoland', 'YieldType', 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('FORT_FAITH_CosPoland', 'Amount', '2');
--雅德维加--
--圣地不取消区域少量相邻加成
DELETE FROM ExcludedAdjacencies WHERE TraitType='TRAIT_LEADER_LITHUANIAN_UNION' AND YieldChangeId='District_Faith';
--军营区域信仰加成
INSERT INTO TraitModifiers (TraitType , ModifierId) VALUES 
('TRAIT_LEADER_LITHUANIAN_UNION' , 'TRAIT_ADJACENT_DISTRICTS_ENCAMPMENT_ADJACENCYFAITH_CosPoland');
INSERT INTO Modifiers (ModifierId , ModifierType) VALUES 
('TRAIT_ADJACENT_DISTRICTS_ENCAMPMENT_ADJACENCYFAITH_CosPoland' , 'MODIFIER_PLAYER_CITIES_DISTRICT_ADJACENCY');
INSERT INTO ModifierArguments (ModifierId , Name , Value) VALUES 
    ('TRAIT_ADJACENT_DISTRICTS_ENCAMPMENT_ADJACENCYFAITH_CosPoland', 'Amount', 1),
	('TRAIT_ADJACENT_DISTRICTS_ENCAMPMENT_ADJACENCYFAITH_CosPoland', 'Description', 'LOC_DISTRICT_DISTRICT_1_FAITH'),
	('TRAIT_ADJACENT_DISTRICTS_ENCAMPMENT_ADJACENCYFAITH_CosPoland', 'DistrictType', 'DISTRICT_ENCAMPMENT'),
	('TRAIT_ADJACENT_DISTRICTS_ENCAMPMENT_ADJACENCYFAITH_CosPoland', 'YieldType', 'YIELD_FAITH');
--发教给遗物
INSERT INTO TraitModifiers (TraitType , ModifierId) VALUES 
('TRAIT_LEADER_LITHUANIAN_UNION' , 'FOUND_RELIGION_RELIC_CosPoland');
INSERT INTO Modifiers (ModifierId , ModifierType , SubjectRequirementSetId , RunOnce , Permanent)
	VALUES ('FOUND_RELIGION_RELIC_CosPoland' , 'MODIFIER_PLAYER_GRANT_RELIC' , 'PLAYER_FOUNDED_RELIGION_CosGeorgia' , 1 , 1);	
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('FOUND_RELIGION_RELIC_CosPoland' , 'Amount' , '1');	
--鸟骑人文解锁
UPDATE Units SET PrereqCivic='CIVIC_HUMANISM' WHERE UnitType='UNIT_POLISH_HUSSAR';