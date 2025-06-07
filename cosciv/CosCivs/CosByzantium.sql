--拜占庭
--女拜--
--牧场给圣地、跑马场标准信仰相邻加成
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_THEODORA', 'THEODORA_HOLY_SITE_ADJACENCY_PASTURE_CosByzantium'),
    ('TRAIT_LEADER_THEODORA', 'THEODORA_HIPPODROME_ADJACENCY_PASTURE_CosByzantium');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES 	
    ('THEODORA_HOLY_SITE_ADJACENCY_PASTURE_CosByzantium', 'MODIFIER_PLAYER_CITIES_IMPROVEMENT_ADJACENCY', NULL),
    ('THEODORA_HIPPODROME_ADJACENCY_PASTURE_CosByzantium', 'MODIFIER_PLAYER_CITIES_IMPROVEMENT_ADJACENCY', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
	('THEODORA_HOLY_SITE_ADJACENCY_PASTURE_CosByzantium',			'Amount',					1),
	('THEODORA_HOLY_SITE_ADJACENCY_PASTURE_CosByzantium', 'Description', 'LOC_DISTRICT_PASTURE_1_FAITH_CosByzantium'),
	('THEODORA_HOLY_SITE_ADJACENCY_PASTURE_CosByzantium',			'DistrictType',				'DISTRICT_HOLY_SITE'),
	('THEODORA_HOLY_SITE_ADJACENCY_PASTURE_CosByzantium',			'ImprovementType',			'IMPROVEMENT_PASTURE'),
	('THEODORA_HOLY_SITE_ADJACENCY_PASTURE_CosByzantium',			'TilesRequired',			1),
	('THEODORA_HOLY_SITE_ADJACENCY_PASTURE_CosByzantium',			'YieldType',				'YIELD_FAITH'),
    ('THEODORA_HIPPODROME_ADJACENCY_PASTURE_CosByzantium',			'Amount',					1),
	('THEODORA_HIPPODROME_ADJACENCY_PASTURE_CosByzantium', 'Description', 'LOC_DISTRICT_PASTURE_1_FAITH_CosByzantium'),
	('THEODORA_HIPPODROME_ADJACENCY_PASTURE_CosByzantium',			'DistrictType',				'DISTRICT_HIPPODROME'),
	('THEODORA_HIPPODROME_ADJACENCY_PASTURE_CosByzantium',			'ImprovementType',			'IMPROVEMENT_PASTURE'),
	('THEODORA_HIPPODROME_ADJACENCY_PASTURE_CosByzantium',			'TilesRequired',			1),
	('THEODORA_HIPPODROME_ADJACENCY_PASTURE_CosByzantium',			'YieldType',				'YIELD_FAITH');
--跑马场相邻给文化
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_THEODORA', 'TRAIT_HIPPODROME_ADJACENCY_CULTURE_CosByzantium');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_HIPPODROME_ADJACENCY_CULTURE_CosByzantium' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS', 'DISTRICT_IS_HIPPODROME_CosByzantium');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('DISTRICT_IS_HIPPODROME_CosByzantium' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('DISTRICT_IS_HIPPODROME_CosByzantium' , 'REQUIRES_DISTRICT_IS_HIPPODROME_CosByzantium');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_DISTRICT_IS_HIPPODROME_CosByzantium' , 'REQUIREMENT_DISTRICT_TYPE_MATCHES');
INSERT INTO RequirementArguments (RequirementId, Name, Value)
	VALUES ('REQUIRES_DISTRICT_IS_HIPPODROME_CosByzantium' , 'DistrictType' , 'DISTRICT_HIPPODROME');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_HIPPODROME_ADJACENCY_CULTURE_CosByzantium', 'YieldTypeToMirror', 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_HIPPODROME_ADJACENCY_CULTURE_CosByzantium', 'YieldTypeToGrant', 'YIELD_CULTURE');
--跑马场--
--不属于专业化区域
UPDATE Districts SET RequiresPopulation=0 WHERE DistrictType='DISTRICT_HIPPODROME';
--区域少量信仰加成
INSERT INTO District_Adjacencies (DistrictType, YieldChangeId) 
    VALUES ('DISTRICT_HIPPODROME', 'District_Faith_CosByzantium');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, OtherDistrictAdjacent) VALUES
('District_Faith_CosByzantium', 'LOC_DISTRICT_DISTRICT_FAITH', 'YIELD_FAITH', 1, 2, 1);
--关联马
INSERT INTO StartBiasResources (CivilizationType, ResourceType, Tier)
	VALUES ('CIVILIZATION_BYZANTIUM', 'RESOURCE_HORSES', 2);