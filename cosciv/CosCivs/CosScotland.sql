--苏格兰
--非食物宜居度加成提高50%
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_SCOTTISH_ENLIGHTENMENT' , 'TRAIT_SCIENCE_HAPPY_CosScotland');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES ('TRAIT_SCIENCE_HAPPY_CosScotland' , 'MODIFIER_PLAYER_CITIES_ADJUST_HAPPINESS_YIELD', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_SCIENCE_HAPPY_CosScotland' , 'HappinessType' , 'HAPPINESS_HAPPY');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_SCIENCE_HAPPY_CosScotland' , 'YieldType' , 'YIELD_SCIENCE');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_SCIENCE_HAPPY_CosScotland' , 'Amount' , '5');

INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_SCOTTISH_ENLIGHTENMENT' , 'TRAIT_SCIENCE_ECSTATIC_CosScotland');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES ('TRAIT_SCIENCE_ECSTATIC_CosScotland' , 'MODIFIER_PLAYER_CITIES_ADJUST_HAPPINESS_YIELD', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_SCIENCE_ECSTATIC_CosScotland' , 'HappinessType' , 'HAPPINESS_ECSTATIC');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_SCIENCE_ECSTATIC_CosScotland' , 'YieldType' , 'YIELD_SCIENCE');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_SCIENCE_ECSTATIC_CosScotland' , 'Amount' , '10');

INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_SCOTTISH_ENLIGHTENMENT' , 'TRAIT_PRODUCTION_HAPPY_CosScotland');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES ('TRAIT_PRODUCTION_HAPPY_CosScotland' , 'MODIFIER_PLAYER_CITIES_ADJUST_HAPPINESS_YIELD', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_PRODUCTION_HAPPY_CosScotland' , 'HappinessType' , 'HAPPINESS_HAPPY');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_PRODUCTION_HAPPY_CosScotland' , 'YieldType' , 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_PRODUCTION_HAPPY_CosScotland' , 'Amount' , '5');

INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_SCOTTISH_ENLIGHTENMENT' , 'TRAIT_PRODUCTION_ECSTATIC_CosScotland');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES ('TRAIT_PRODUCTION_ECSTATIC_CosScotland' , 'MODIFIER_PLAYER_CITIES_ADJUST_HAPPINESS_YIELD', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_PRODUCTION_ECSTATIC_CosScotland' , 'HappinessType' , 'HAPPINESS_ECSTATIC');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_PRODUCTION_ECSTATIC_CosScotland' , 'YieldType' , 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_PRODUCTION_ECSTATIC_CosScotland' , 'Amount' , '10');

INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_SCOTTISH_ENLIGHTENMENT' , 'TRAIT_GOLD_HAPPY_CosScotland');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES ('TRAIT_GOLD_HAPPY_CosScotland' , 'MODIFIER_PLAYER_CITIES_ADJUST_HAPPINESS_YIELD', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_GOLD_HAPPY_CosScotland' , 'HappinessType' , 'HAPPINESS_HAPPY');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_GOLD_HAPPY_CosScotland' , 'YieldType' , 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_GOLD_HAPPY_CosScotland' , 'Amount' , '5');

INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_SCOTTISH_ENLIGHTENMENT' , 'TRAIT_GOLD_ECSTATIC_CosScotland');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES ('TRAIT_GOLD_ECSTATIC_CosScotland' , 'MODIFIER_PLAYER_CITIES_ADJUST_HAPPINESS_YIELD', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_GOLD_ECSTATIC_CosScotland' , 'HappinessType' , 'HAPPINESS_ECSTATIC');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_GOLD_ECSTATIC_CosScotland' , 'YieldType' , 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_GOLD_ECSTATIC_CosScotland' , 'Amount' , '10');

INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_SCOTTISH_ENLIGHTENMENT' , 'TRAIT_FAITH_HAPPY_CosScotland');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES ('TRAIT_FAITH_HAPPY_CosScotland' , 'MODIFIER_PLAYER_CITIES_ADJUST_HAPPINESS_YIELD', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_FAITH_HAPPY_CosScotland' , 'HappinessType' , 'HAPPINESS_HAPPY');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_FAITH_HAPPY_CosScotland' , 'YieldType' , 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_FAITH_HAPPY_CosScotland' , 'Amount' , '5');

INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_SCOTTISH_ENLIGHTENMENT' , 'TRAIT_FAITH_ECSTATIC_CosScotland');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES ('TRAIT_FAITH_ECSTATIC_CosScotland' , 'MODIFIER_PLAYER_CITIES_ADJUST_HAPPINESS_YIELD', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_FAITH_ECSTATIC_CosScotland' , 'HappinessType' , 'HAPPINESS_ECSTATIC');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_FAITH_ECSTATIC_CosScotland' , 'YieldType' , 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_FAITH_ECSTATIC_CosScotland' , 'Amount' , '10');

INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_SCOTTISH_ENLIGHTENMENT' , 'TRAIT_CULTURE_HAPPY_CosScotland');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES ('TRAIT_CULTURE_HAPPY_CosScotland' , 'MODIFIER_PLAYER_CITIES_ADJUST_HAPPINESS_YIELD', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_CULTURE_HAPPY_CosScotland' , 'HappinessType' , 'HAPPINESS_HAPPY');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_CULTURE_HAPPY_CosScotland' , 'YieldType' , 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_CULTURE_HAPPY_CosScotland' , 'Amount' , '5');

INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_CIVILIZATION_SCOTTISH_ENLIGHTENMENT' , 'TRAIT_CULTURE_ECSTATIC_CosScotland');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES ('TRAIT_CULTURE_ECSTATIC_CosScotland' , 'MODIFIER_PLAYER_CITIES_ADJUST_HAPPINESS_YIELD', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_CULTURE_ECSTATIC_CosScotland' , 'HappinessType' , 'HAPPINESS_ECSTATIC');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_CULTURE_ECSTATIC_CosScotland' , 'YieldType' , 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('TRAIT_CULTURE_ECSTATIC_CosScotland' , 'Amount' , '10');

--罗伯特一世
--宣布保卫城邦战争也能享受加成
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_LEADER_BANNOCKBURN' , 'TRAIT_PROTECTORATE_WAR_PRODUCTION_CosScotland');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_PROTECTORATE_WAR_PRODUCTION_CosScotland' , 'MODIFIER_PLAYER_ADD_DIPLOMATIC_YIELD_MODIFIER', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_PROTECTORATE_WAR_PRODUCTION_CosScotland', 'DiplomaticYieldSource', 'PROTECTORATE_WAR_INITIATED');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_PROTECTORATE_WAR_PRODUCTION_CosScotland', 'TurnsActive', '10');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_PROTECTORATE_WAR_PRODUCTION_CosScotland', 'YieldType', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_PROTECTORATE_WAR_PRODUCTION_CosScotland', 'Amount', '100');
INSERT INTO TraitModifiers (TraitType , ModifierId)
	VALUES ('TRAIT_LEADER_BANNOCKBURN' , 'TRAIT_PROTECTORATE_WAR_MOVEMENT_CosScotland');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('TRAIT_PROTECTORATE_WAR_MOVEMENT_CosScotland' , 'MODIFIER_PLAYER_ADD_DIPLOMATIC_MOVEMENT_MODIFIER', NULL);
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_PROTECTORATE_WAR_MOVEMENT_CosScotland', 'DiplomaticYieldSource', 'PROTECTORATE_WAR_INITIATED');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_PROTECTORATE_WAR_MOVEMENT_CosScotland', 'TurnsActive', '10');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('TRAIT_PROTECTORATE_WAR_MOVEMENT_CosScotland', 'Amount', '2');
--高尔夫球场
--游戏与娱乐解锁
UPDATE Improvements SET PrereqCivic='CIVIC_GAMES_RECREATION' WHERE ImprovementType='IMPROVEMENT_GOLF_COURSE';
--相邻所有区域加一文
DELETE FROM Improvement_Adjacencies WHERE ImprovementType='IMPROVEMENT_GOLF_COURSE' AND YieldChangeId='GolfCourse_CityCenterAdjacency';
DELETE FROM Improvement_Adjacencies WHERE ImprovementType='IMPROVEMENT_GOLF_COURSE' AND YieldChangeId='GolfCourse_EntertainmentComplexAdjacency';
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId)
	VALUES ('IMPROVEMENT_GOLF_COURSE', 'GolfCourse_CultureAdjacency_CosScotland');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, OtherDistrictAdjacent,ObsoleteCivic) VALUES
('GolfCourse_CultureAdjacency_CosScotland', 'Placeholder', 'YIELD_CULTURE', 1, 1, 1, 'CIVIC_THE_ENLIGHTENMENT');
--启蒙运动后相邻所有区域加二文
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId)
	VALUES ('IMPROVEMENT_GOLF_COURSE', 'GolfCourse_CultureAdjacency_late_CosScotland');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, OtherDistrictAdjacent, PrereqCivic) VALUES
('GolfCourse_CultureAdjacency_late_CosScotland', 'Placeholder', 'YIELD_CULTURE', 2, 1, 1, 'CIVIC_THE_ENLIGHTENMENT');
--启蒙运动后相邻所有区域加一锤
INSERT INTO Improvement_YieldChanges (ImprovementType, YieldType, YieldChange) VALUES
    ('IMPROVEMENT_GOLF_COURSE', 'YIELD_PRODUCTION', 0);
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId)
	VALUES ('IMPROVEMENT_GOLF_COURSE', 'GolfCourse_ProductionAdjacency_CosScotland');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, OtherDistrictAdjacent, PrereqCivic) VALUES
('GolfCourse_ProductionAdjacency_CosScotland', 'Placeholder', 'YIELD_PRODUCTION', 1, 1, 1, 'CIVIC_THE_ENLIGHTENMENT');
--高地军团--
--造价大幅降低
UPDATE Units SET Cost=190 WHERE UnitType='UNIT_SCOTTISH_HIGHLANDER';
--提前至弹道学
UPDATE Units SET PrereqTech='TECH_BALLISTICS' WHERE UnitType='UNIT_SCOTTISH_HIGHLANDER';


