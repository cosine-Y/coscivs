--腓尼基
--开拓者+2速
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_MEDITERRANEAN_COLONIES' , 'FASTER_SETTLERS_CosPhoenicia');
INSERT INTO Modifiers (ModifierId , ModifierType, SubjectRequirementSetId)
	VALUES ('FASTER_SETTLERS_CosPhoenicia', 'MODIFIER_PLAYER_UNITS_ADJUST_MOVEMENT','UNIT_IS_SETTLER_Cos');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('UNIT_IS_SETTLER_Cos' , 'REQUIREMENT_UNIT_IS_SETTLER_Cos');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('UNIT_IS_SETTLER_Cos' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIREMENT_UNIT_IS_SETTLER_Cos' , 'REQUIREMENT_UNIT_TYPE_MATCHES');
INSERT INTO RequirementArguments (RequirementId , Name , Value)
	VALUES ('REQUIREMENT_UNIT_IS_SETTLER_Cos' , 'UnitType' , 'UNIT_SETTLER');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('FASTER_SETTLERS_CosPhoenicia', 'Amount', '2');
--开拓者航海术下水
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_MEDITERRANEAN_COLONIES' , 'SETTLERS_EARLY_EMBARK_CosPhoenicia');
INSERT INTO Modifiers (ModifierId , ModifierType , SubjectRequirementSetId)
	VALUES ('SETTLERS_EARLY_EMBARK_CosPhoenicia', 'MODIFIER_PLAYER_ADJUST_EMBARK_UNIT_PASS', 'PLAYER_HAS_SAILING_CosPhoenicia');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLAYER_HAS_SAILING_CosPhoenicia' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLAYER_HAS_SAILING_CosPhoenicia' , 'REQUIRES_PLAYER_HAS_SAILING_CosPhoenicia');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_PLAYER_HAS_SAILING_CosPhoenicia' , 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');
INSERT INTO RequirementArguments (RequirementId, Name, Value)
	VALUES ('REQUIRES_PLAYER_HAS_SAILING_CosPhoenicia' , 'TechnologyType' , 'TECH_SAILING');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('SETTLERS_EARLY_EMBARK_CosPhoenicia', 'UnitType', 'UNIT_SETTLER');
--狄多--
--外交区给贸易路线
INSERT INTO TraitModifiers (TraitType , ModifierId) VALUES
('TRAIT_LEADER_FOUNDER_CARTHAGE' , 'TRADE_ROUTE_DIPLOMATIC_CosPhoenicia');
INSERT INTO Modifiers (ModifierId , ModifierType , SubjectRequirementSetId) VALUES
('TRADE_ROUTE_DIPLOMATIC_CosPhoenicia', 'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_CAPACITY', 'CITY_HAS_DIPLOMATIC_REQUIREMENTS_CosAmerica');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('TRADE_ROUTE_DIPLOMATIC_CosPhoenicia', 'Amount', '1');
--外交区建筑给贸易路线
INSERT INTO TraitModifiers (TraitType , ModifierId) VALUES
('TRAIT_LEADER_FOUNDER_CARTHAGE' , 'TRADE_ROUTE_DIPLOMATIC1_CosPhoenicia');
INSERT INTO Modifiers (ModifierId , ModifierType , SubjectRequirementSetId) VALUES
('TRADE_ROUTE_DIPLOMATIC1_CosPhoenicia', 'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_CAPACITY', 'BUILDING_IS_CONSULATE');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('TRADE_ROUTE_DIPLOMATIC1_CosPhoenicia', 'Amount', '1');
INSERT INTO TraitModifiers (TraitType , ModifierId) VALUES
('TRAIT_LEADER_FOUNDER_CARTHAGE' , 'TRADE_ROUTE_DIPLOMATIC2_CosPhoenicia');
INSERT INTO Modifiers (ModifierId , ModifierType , SubjectRequirementSetId) VALUES
('TRADE_ROUTE_DIPLOMATIC2_CosPhoenicia', 'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_CAPACITY', 'BUILDING_IS_CHANCERY');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('TRADE_ROUTE_DIPLOMATIC2_CosPhoenicia', 'Amount', '1');
--外交区区域加速
INSERT INTO TraitModifiers (TraitType , ModifierId) VALUES
('TRAIT_LEADER_FOUNDER_CARTHAGE' , 'PRODUCTION_DIPLOMATIC_CosPhoenicia');
INSERT INTO Modifiers (ModifierId , ModifierType , SubjectRequirementSetId) VALUES
('PRODUCTION_DIPLOMATIC_CosPhoenicia', 'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION_MODIFIER', 'CITY_HAS_DIPLOMATIC_REQUIREMENTS_CosAmerica');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('PRODUCTION_DIPLOMATIC_CosPhoenicia', 'Amount', '50');
--迁都生产力减少
UPDATE Projects SET Cost=50 WHERE ProjectType='PROJECT_COTHON_CAPITAL_MOVE';
--U型港--
--贸易路线起点+1锤
UPDATE District_TradeRouteYields SET YieldChangeAsOrigin=1 WHERE DistrictType='DISTRICT_COTHON' AND YieldType='YIELD_PRODUCTION';
--国内贸易路线终点+1金
UPDATE District_TradeRouteYields SET YieldChangeAsDomesticDestination=1 WHERE DistrictType='DISTRICT_COTHON' AND YieldType='YIELD_GOLD';
--战船远程
UPDATE Units SET RangedCombat=15, Range=1 WHERE UnitType='UNIT_PHOENICIA_BIREME';
INSERT INTO TypeTags (Type, Tag) VALUES
('UNIT_PHOENICIA_BIREME', 'CLASS_NAVAL_RANGED');
--一级关联海岸
UPDATE StartBiasTerrains SET Tier=1 WHERE CivilizationType='CIVILIZATION_PHOENICIA' AND TerrainType='TERRAIN_COAST';

