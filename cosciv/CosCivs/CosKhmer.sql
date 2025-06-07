--高棉
--建造水渠加速100%
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_KHMER_BARAYS' , 'TRAIT_BOOST_AQUEDUCT_PRODUCTION_CosKhmer');
INSERT INTO Modifiers (ModifierId , ModifierType , SubjectRequirementSetId)
	VALUES ('TRAIT_BOOST_AQUEDUCT_PRODUCTION_CosKhmer', 'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION', NULL);
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('TRAIT_BOOST_AQUEDUCT_PRODUCTION_CosKhmer', 'DistrictType', 'DISTRICT_AQUEDUCT');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('TRAIT_BOOST_AQUEDUCT_PRODUCTION_CosKhmer', 'Amount', '100');
--农场相邻水渠+1锤
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_KHMER_BARAYS', 'FARM_AQUEDUCT_PRODUCTION_CosKhmer');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('FARM_AQUEDUCT_PRODUCTION_CosKhmer' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_IS_FARM_AQUEDUCT_ADJACENT_REQUIREMENTS');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('FARM_AQUEDUCT_PRODUCTION_CosKhmer' , 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('FARM_AQUEDUCT_PRODUCTION_CosKhmer' , 'Amount', '1');
/* --农场+1信仰
DELETE FROM TraitModifiers WHERE TraitType='TRAIT_CIVILIZATION_KHMER_BARAYS' AND ModifierId='TRAIT_FARM_HOLY_SITE_ADJECENCY_FAITH';
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_CIVILIZATION_KHMER_BARAYS', 'INCREASED_FARM_FAITH_CosKhmer');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('INCREASED_FARM_FAITH_CosKhmer' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_FARM_REQUIREMENTS_CosMaya');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('INCREASED_FARM_FAITH_CosKhmer' , 'YieldType', 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('INCREASED_FARM_FAITH_CosKhmer' , 'Amount', '1'); */
--一级关联河流
UPDATE StartBiasRivers SET Tier=1 WHERE CivilizationType ='CIVILIZATION_KHMER'; 