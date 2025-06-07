--斯基泰
--牧场+1信仰
INSERT INTO TraitModifiers (TraitType, ModifierId) 
    VALUES ('TRAIT_CIVILIZATION_EXTRA_LIGHT_CAVALRY', 'PASTURE_FAITH_CosScythia');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('PASTURE_FAITH_CosScythia' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_PASTURE_REQUIREMENTS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PASTURE_FAITH_CosScythia', 'YieldType', 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('PASTURE_FAITH_CosScythia', 'Amount', '1');
--坟墩--
--首次占领城市后所有坟墩+1信仰
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_CIVILIZATION_EXTRA_LIGHT_CAVALRY', 'KURGAN_FAITH_CAPTURED_CITY_CosScythia');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 	
    ('KURGAN_FAITH_CAPTURED_CITY_CosScythia', 'MODIFIER_PLAYER_CAPTURED_CITY_ATTACH_MODIFIER', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('KURGAN_FAITH_CAPTURED_CITY_CosScythia', 'ModifierId', 'KURGAN_FAITH_CAPTURED_CITY_CosScythia_MODIFIER');
INSERT INTO Modifiers (ModifierId , ModifierType , SubjectRequirementSetId , RunOnce , Permanent) VALUES ('KURGAN_FAITH_CAPTURED_CITY_CosScythia_MODIFIER', 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_KURGAN_REQUIREMENTS_CosScythia', 1, 1);	
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_KURGAN_REQUIREMENTS_CosScythia' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_KURGAN_REQUIREMENTS_CosScythia' , 'REQUIRES_PLOT_HAS_KURGAN_CosScythia');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_PLOT_HAS_KURGAN_CosScythia' , 'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES');
INSERT INTO RequirementArguments (RequirementId, Name, Value)
	VALUES ('REQUIRES_PLOT_HAS_KURGAN_CosScythia' , 'ImprovementType' , 'IMPROVEMENT_KURGAN');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('KURGAN_FAITH_CAPTURED_CITY_CosScythia_MODIFIER', 'YieldType', 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('KURGAN_FAITH_CAPTURED_CITY_CosScythia_MODIFIER', 'Amount', '1');
--骑马+1锤
INSERT INTO Improvement_YieldChanges (ImprovementType, YieldType, YieldChange) VALUES
    ('IMPROVEMENT_KURGAN', 'YIELD_FOOD', 0),
    ('IMPROVEMENT_KURGAN', 'YIELD_PRODUCTION', 0);
INSERT INTO Improvement_BonusYieldChanges (ImprovementType, YieldType, BonusYieldChange, PrereqTech, PrereqCivic) VALUES
    ('IMPROVEMENT_KURGAN', 'YIELD_PRODUCTION', 1, 'TECH_HORSEBACK_RIDING', NULL);
--马镫+1粮
INSERT INTO Improvement_BonusYieldChanges (ImprovementType, YieldType, BonusYieldChange, PrereqTech, PrereqCivic) VALUES
    ('IMPROVEMENT_KURGAN', 'YIELD_FOOD', 1, 'TECH_STIRRUPS', NULL);
--萨卡弓骑手--
--攻击后可移动
INSERT INTO TypeTags(Type, Tag) VALUES
('UNIT_SCYTHIAN_HORSE_ARCHER', 'CLASS_VOI_CHIEN');
--近战28力，远程32力，80锤
UPDATE Units SET Combat=28,RangedCombat=32,Cost=80 WHERE UnitType='UNIT_SCYTHIAN_HORSE_ARCHER';
--一级关联马
UPDATE StartBiasResources SET Tier=1 WHERE CivilizationType='CIVILIZATION_SCYTHIA' AND ResourceType='RESOURCE_HORSES';
--关联牛羊
INSERT INTO StartBiasResources (CivilizationType, ResourceType, Tier) VALUES
('CIVILIZATION_SCYTHIA', 'RESOURCE_CATTLE', 3),
('CIVILIZATION_SCYTHIA', 'RESOURCE_SHEEP', 3);