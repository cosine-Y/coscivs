--克里
--畜牧送商人,+1商路容量
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_CIVILIZATION_CREE_TRADE_GAIN_TILES', 'TRAIT_ANIMAL_HUSBANDRY_TRADE_ROUTE_CosCree'),
('TRAIT_CIVILIZATION_CREE_TRADE_GAIN_TILES', 'TRAIT_ANIMAL_HUSBANDRY_ADD_TRADER_CosCree');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('TRAIT_ANIMAL_HUSBANDRY_TRADE_ROUTE_CosCree' , 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY', 'PLAYER_HAS_ANIMAL_HUSBANDRY_AND_CAPITAL_CosCree');
INSERT INTO Modifiers (ModifierId , ModifierType , OwnerRequirementSetId , RunOnce , Permanent) VALUES ('TRAIT_ANIMAL_HUSBANDRY_ADD_TRADER_CosCree', 'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL', 'PLAYER_HAS_ANIMAL_HUSBANDRY_AND_CAPITAL_CosCree', 1, 1);
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLAYER_HAS_ANIMAL_HUSBANDRY_AND_CAPITAL_CosCree' , 'REQUIREMENTSET_TEST_ALL');	
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLAYER_HAS_ANIMAL_HUSBANDRY_AND_CAPITAL_CosCree', 'REQUIRES_PLAYER_HAS_ANIMAL_HUSBANDRY_CosCree');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_PLAYER_HAS_ANIMAL_HUSBANDRY_CosCree' , 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');
INSERT INTO RequirementArguments (RequirementId, Name, Value)
	VALUES ('REQUIRES_PLAYER_HAS_ANIMAL_HUSBANDRY_CosCree' , 'TechnologyType' , 'TECH_ANIMAL_HUSBANDRY');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLAYER_HAS_ANIMAL_HUSBANDRY_AND_CAPITAL_CosCree', 'REQUIRES_CAPITAL_CITY');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('TRAIT_ANIMAL_HUSBANDRY_TRADE_ROUTE_CosCree' , 'Amount', '1');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES 
('TRAIT_ANIMAL_HUSBANDRY_ADD_TRADER_CosCree' , 'UnitType', 'UNIT_TRADER'),
('TRAIT_ANIMAL_HUSBANDRY_ADD_TRADER_CosCree' , 'AllowUniqueOverride', '0'),
('TRAIT_ANIMAL_HUSBANDRY_ADD_TRADER_CosCree' , 'Amount', '1');
--庞德梅克--
--目的地棚屋为输出加食物
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_LEADER_ALLIANCE_AND_TRADE', 'TRAIT_TRADE_FOOD_FROM_MEKEWAPS_CosCree');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES
('TRAIT_TRADE_FOOD_FROM_MEKEWAPS_CosCree' , 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_IMPROVEMENT_IN_TARGET');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('TRAIT_TRADE_FOOD_FROM_MEKEWAPS_CosCree' , 'Amount', '1'),
('TRAIT_TRADE_FOOD_FROM_MEKEWAPS_CosCree' , 'ImprovementType', 'IMPROVEMENT_MEKEWAP'),
('TRAIT_TRADE_FOOD_FROM_MEKEWAPS_CosCree' , 'YieldType', 'YIELD_FOOD'),
('TRAIT_TRADE_FOOD_FROM_MEKEWAPS_CosCree' , 'Origin', '1');
--目的地棚屋为输入加金币
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
('TRAIT_LEADER_ALLIANCE_AND_TRADE', 'TRAIT_TRADE_GOLD_FROM_MEKEWAPS_CosCree');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES
('TRAIT_TRADE_GOLD_FROM_MEKEWAPS_CosCree' , 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_IMPROVEMENT_IN_TARGET');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('TRAIT_TRADE_GOLD_FROM_MEKEWAPS_CosCree' , 'Amount', '1'),
('TRAIT_TRADE_GOLD_FROM_MEKEWAPS_CosCree' , 'ImprovementType', 'IMPROVEMENT_MEKEWAP'),
('TRAIT_TRADE_GOLD_FROM_MEKEWAPS_CosCree' , 'YieldType', 'YIELD_GOLD'),
('TRAIT_TRADE_GOLD_FROM_MEKEWAPS_CosCree' , 'Destination', '1');
--棚屋--
--加一粮
UPDATE Improvement_YieldChanges SET YieldChange=1 WHERE ImprovementType='IMPROVEMENT_MEKEWAP' AND YieldType='YIELD_FOOD'; 
--相邻加粮提前至行政部门
UPDATE Adjacency_YieldChanges SET ObsoleteCivic='CIVIC_CIVIL_SERVICE' WHERE ID='Mekewap_FirstBonusAdjacency'; 
UPDATE Adjacency_YieldChanges SET PrereqCivic='CIVIC_CIVIL_SERVICE' WHERE ID='Mekewap_SecondBonusAdjacency'; 
--相邻加金币提前至货币
UPDATE Adjacency_YieldChanges SET PrereqTech='TECH_CURRENCY' WHERE ID='Mekewap_ThirdBonusAdjacency';
--可以建造在泛滥平原上
INSERT INTO Improvement_ValidFeatures (ImprovementType, FeatureType) VALUES
    ('IMPROVEMENT_MEKEWAP', 'FEATURE_FLOODPLAINS'),
	('IMPROVEMENT_MEKEWAP', 'FEATURE_FLOODPLAINS_PLAINS'),
	('IMPROVEMENT_MEKEWAP', 'FEATURE_FLOODPLAINS_GRASSLAND');
--奥克奇塔乌--
--+1视野
UPDATE Units SET BaseSightRange=3 WHERE UnitType='UNIT_CREE_OKIHTCITAW';
--造价降低
UPDATE Units SET Cost=38 WHERE UnitType='UNIT_CREE_OKIHTCITAW';
--关联营地牧场资源
INSERT INTO StartBiasResources (CivilizationType, ResourceType, Tier) VALUES
('CIVILIZATION_CREE', 'RESOURCE_DEER', 2),
('CIVILIZATION_CREE', 'RESOURCE_FURS', 2),
('CIVILIZATION_CREE', 'RESOURCE_IVORY', 2),
('CIVILIZATION_CREE', 'RESOURCE_TRUFFLES', 2),
('CIVILIZATION_CREE', 'RESOURCE_SHEEP', 4),
('CIVILIZATION_CREE', 'RESOURCE_CATTLE', 4),
('CIVILIZATION_CREE', 'RESOURCE_HORSES', 4);