--德国
--没有专业化区域的城市造区域加速25%
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_CIVILIZATION_IMPERIAL_FREE_CITIES', 'DISTRICT_PRODUCTION_CosGermany');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('DISTRICT_PRODUCTION_CosGermany', 'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION_MODIFIER', 'CITY_HAS_0_SPECIALTY_DISTRICTS_REQUIREMENTS');
INSERT INTO ModifierArguments (ModifierId, Name ,Value) VALUES
('DISTRICT_PRODUCTION_CosGermany', 'Amount','25');
--巴巴罗萨--
--兵工厂+1影响力点数
INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES 
    ('BUILDING_ARMORY', 'INFLUENCEPOINTS_CosGermany');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('INFLUENCEPOINTS_CosGermany', 'MODIFIER_PLAYER_ADJUST_INFLUENCE_POINTS_PER_TURN', 'PLAYER_IS_BARBAROSSA');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLAYER_IS_BARBAROSSA' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLAYER_IS_BARBAROSSA' , 'REQUIRES_PLAYER_IS_BARBAROSSA');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_PLAYER_IS_BARBAROSSA' , 'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES');
INSERT INTO RequirementArguments (RequirementId, Name, Value)
	VALUES ('REQUIRES_PLAYER_IS_BARBAROSSA' , 'LeaderType' , 'LEADER_BARBAROSSA');
INSERT INTO ModifierArguments (ModifierId, Name ,Value) VALUES
('INFLUENCEPOINTS_CosGermany', 'Amount','1');
--工作坊+1影响力点数
INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES 
    ('BUILDING_WORKSHOP', 'INFLUENCEPOINTS_CosGermany');
--银行+1影响力点数
INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES 
    ('BUILDING_BANK', 'INFLUENCEPOINTS_CosGermany');
INSERT INTO BuildingModifiers (BuildingType, ModifierId) SELECT 
CivUniqueBuildingType, 'INFLUENCEPOINTS_CosGermany' FROM BuildingReplaces WHERE ReplacesBuildingType='BUILDING_BANK';
--打城邦+3力
UPDATE ModifierArguments SET Value='3' WHERE ModifierId='BARBAROSSA_COMBAT_BONUS_VS_CITY_STATES';
--路德维希--
--城市每有一个奇观，建造者+1次数
INSERT INTO BuildingModifiers (BuildingType, ModifierId) SELECT 
BuildingType, 'ADDITIONAL_BUILDER_CHARGES_UNIT_MODIFIER_LUDWIG_CosGermany' FROM Buildings WHERE IsWonder=1;
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('ADDITIONAL_BUILDER_CHARGES_UNIT_MODIFIER_LUDWIG_CosGermany', 'MODIFIER_SINGLE_CITY_BUILDER_CHARGES', 'UNIT_IS_BUILDER_LUDWIG');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('UNIT_IS_BUILDER_LUDWIG' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('UNIT_IS_BUILDER_LUDWIG' , 'REQUIREMENT_UNIT_IS_BUILDER'),
('UNIT_IS_BUILDER_LUDWIG' , 'REQUIRES_PLAYER_IS_LUDWIG');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_PLAYER_IS_LUDWIG' , 'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES');
INSERT INTO RequirementArguments (RequirementId, Name, Value)
	VALUES ('REQUIRES_PLAYER_IS_LUDWIG' , 'LeaderType' , 'LEADER_LUDWIG');
INSERT INTO ModifierArguments (ModifierId, Name ,Value) VALUES
('ADDITIONAL_BUILDER_CHARGES_UNIT_MODIFIER_LUDWIG_CosGermany', 'Amount','1');
--汉萨--
--+1大工点
UPDATE District_GreatPersonPoints SET PointsPerTurn=2 WHERE DistrictType='DISTRICT_HANSA';
--港口、马里商业相邻+2
INSERT INTO District_Adjacencies (DistrictType, YieldChangeId) VALUES
('DISTRICT_HANSA', 'HARBOR_Production_CosGermany'),
('DISTRICT_HANSA', 'ROYAL_NAVY_DOCKYARD_Production_CosGermany'),
('DISTRICT_HANSA', 'COTHON_Production_CosGermany'),
('DISTRICT_HANSA', 'SUGUBA_Production_CosGermany');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentDistrict) VALUES
('HARBOR_Production_CosGermany', 'LOC_DISTRICT_HARBOR_PRODUCTION_CosGermany', 'YIELD_PRODUCTION', 2, 1,'DISTRICT_HARBOR'),
('ROYAL_NAVY_DOCKYARD_Production_CosGermany', 'LOC_DISTRICT_ROYAL_NAVY_DOCKYARD_PRODUCTION_CosGermany', 'YIELD_PRODUCTION', 2, 1,'DISTRICT_ROYAL_NAVY_DOCKYARD'),
('COTHON_Production_CosGermany', 'LOC_DISTRICT_COTHON_PRODUCTION_CosGermany', 'YIELD_PRODUCTION', 2, 1,'DISTRICT_COTHON'),
('SUGUBA_Production_CosGermany', 'LOC_DISTRICT_SUGUBA_PRODUCTION_CosGermany', 'YIELD_PRODUCTION', 2, 1,'DISTRICT_SUGUBA');
--浴场相邻+2
INSERT INTO District_Adjacencies (DistrictType, YieldChangeId) 
    VALUES ('DISTRICT_HANSA', 'Bath_Production');
--U艇--
--加一移动力
UPDATE Units SET BaseMoves=5 WHERE UnitType='UNIT_GERMAN_UBOAT';