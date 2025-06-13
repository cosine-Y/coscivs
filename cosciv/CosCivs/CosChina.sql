--中国
--长城--
--长城相邻加粮锤
INSERT INTO Improvement_YieldChanges (ImprovementType, YieldType, YieldChange) VALUES
    ('IMPROVEMENT_GREAT_WALL', 'YIELD_FOOD', 0),
    ('IMPROVEMENT_GREAT_WALL', 'YIELD_PRODUCTION', 0);
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId) VALUES
    ('IMPROVEMENT_GREAT_WALL', 'GreatWall_Food_CosChina'),
    ('IMPROVEMENT_GREAT_WALL', 'GreatWall_Production_CosChina');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentTerrain, AdjacentFeature, AdjacentImprovement, AdjacentDistrict, PrereqCivic, PrereqTech, ObsoleteCivic, ObsoleteTech) VALUES
('GreatWall_Food_CosChina', 'Placeholder', 'YIELD_FOOD', 1, 2, NULL, NULL, 'IMPROVEMENT_GREAT_WALL', NULL, 'CIVIC_FEUDALISM', NULL, NULL, NULL),
('GreatWall_Production_CosChina', 'Placeholder', 'YIELD_PRODUCTION', 1, 2, NULL, NULL, 'IMPROVEMENT_GREAT_WALL', NULL, 'CIVIC_FEUDALISM', NULL, NULL, NULL);
--长城可以建造在战略上
INSERT INTO Improvement_ValidResources (ImprovementType, ResourceType, MustRemoveFeature) VALUES 
    ('IMPROVEMENT_GREAT_WALL', 'RESOURCE_ALUMINUM', '1'),
    ('IMPROVEMENT_GREAT_WALL', 'RESOURCE_COAL', '1'),
    ('IMPROVEMENT_GREAT_WALL', 'RESOURCE_IRON', '1'),
    ('IMPROVEMENT_GREAT_WALL', 'RESOURCE_URANIUM', '1'),
    ('IMPROVEMENT_GREAT_WALL', 'RESOURCE_NITER', '1'),
    ('IMPROVEMENT_GREAT_WALL', 'RESOURCE_OIL', '1'),
    ('IMPROVEMENT_GREAT_WALL', 'RESOURCE_HORSES', '1');
--忽必烈--
/* --首次招募大商+2贸易路线容量
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_KUBLAI', 'KUBLAI_TRADE_ROUTES_MODIFIER_CosChina');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, OwnerRequirementSetId)
	VALUES 	('KUBLAI_TRADE_ROUTES_MODIFIER_CosChina' , 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY', 1, 1,'PLAYER_HAS_GREAT_MERCHANT_REQUIREMENTS_CosChina');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLAYER_HAS_GREAT_MERCHANT_REQUIREMENTS_CosChina' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLAYER_HAS_GREAT_MERCHANT_REQUIREMENTS_CosChina' , 'PLAYER_HAS_GREAT_MERCHANT');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('PLAYER_HAS_GREAT_MERCHANT' , 'REQUIREMENT_PLAYER_HAS_GREAT_PERSON_CLASS');
INSERT INTO RequirementArguments (RequirementId, Name, Value)
	VALUES ('PLAYER_HAS_GREAT_MERCHANT' , 'GreatPersonClass', 'GREAT_PERSON_CLASS_MERCHANT');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES ('KUBLAI_TRADE_ROUTES_MODIFIER_CosChina' , 'Amount' , '2');
*/
--加三以上学院提供等量文化
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_KUBLAI', 'KUBLAI_HIGH_CAMPUS_ADJACENCY_CULTURE_CosChina');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('KUBLAI_HIGH_CAMPUS_ADJACENCY_CULTURE_CosChina' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS', 'DISTRICT_IS_HIGH_CAMPUS_CosChina');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('DISTRICT_IS_HIGH_CAMPUS_CosChina' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('DISTRICT_IS_HIGH_CAMPUS_CosChina' , 'REQUIRES_DISTRICT_IS_CAMPUS'),
('DISTRICT_IS_HIGH_CAMPUS_CosChina' , 'REQUIRES_CAMPUS_HAS_3_ADJACENCY_CosChina');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_CAMPUS_HAS_3_ADJACENCY_CosChina' , 'REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
('REQUIRES_CAMPUS_HAS_3_ADJACENCY_CosChina' , 'DistrictType', 'DISTRICT_CAMPUS'),
('REQUIRES_CAMPUS_HAS_3_ADJACENCY_CosChina' , 'YieldType', 'YIELD_SCIENCE'),
('REQUIRES_CAMPUS_HAS_3_ADJACENCY_CosChina' , 'Amount', '3');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('KUBLAI_HIGH_CAMPUS_ADJACENCY_CULTURE_CosChina', 'YieldTypeToMirror', 'YIELD_SCIENCE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('KUBLAI_HIGH_CAMPUS_ADJACENCY_CULTURE_CosChina', 'YieldTypeToGrant', 'YIELD_CULTURE');
--加三以上圣地提供等量文化
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_KUBLAI', 'KUBLAI_HIGH_HOLY_SITE_ADJACENCY_CULTURE_CosChina');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('KUBLAI_HIGH_HOLY_SITE_ADJACENCY_CULTURE_CosChina' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS', 'DISTRICT_IS_HIGH_HOLY_SITE_CosChina');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('DISTRICT_IS_HIGH_HOLY_SITE_CosChina' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('DISTRICT_IS_HIGH_HOLY_SITE_CosChina' , 'REQUIRES_DISTRICT_IS_HOLY_SITE'),
('DISTRICT_IS_HIGH_HOLY_SITE_CosChina' , 'REQUIRES_HOLY_SITE_HAS_3_ADJACENCY_CosChina');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_HOLY_SITE_HAS_3_ADJACENCY_CosChina' , 'REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
('REQUIRES_HOLY_SITE_HAS_3_ADJACENCY_CosChina' , 'DistrictType', 'DISTRICT_HOLY_SITE'),
('REQUIRES_HOLY_SITE_HAS_3_ADJACENCY_CosChina' , 'YieldType', 'YIELD_FAITH'),
('REQUIRES_HOLY_SITE_HAS_3_ADJACENCY_CosChina' , 'Amount', '3');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('KUBLAI_HIGH_HOLY_SITE_ADJACENCY_CULTURE_CosChina', 'YieldTypeToMirror', 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('KUBLAI_HIGH_HOLY_SITE_ADJACENCY_CULTURE_CosChina', 'YieldTypeToGrant', 'YIELD_CULTURE');
--加三以上剧院提供等量文化
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_KUBLAI', 'KUBLAI_HIGH_THEATER_ADJACENCY_CULTURE_CosChina');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('KUBLAI_HIGH_THEATER_ADJACENCY_CULTURE_CosChina' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS', 'DISTRICT_IS_HIGH_THEATER_CosChina');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('DISTRICT_IS_HIGH_THEATER_CosChina' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('DISTRICT_IS_HIGH_THEATER_CosChina' , 'REQUIRES_DISTRICT_IS_THEATER'),
('DISTRICT_IS_HIGH_THEATER_CosChina' , 'REQUIRES_THEATER_HAS_3_ADJACENCY_CosChina');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_THEATER_HAS_3_ADJACENCY_CosChina' , 'REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
('REQUIRES_THEATER_HAS_3_ADJACENCY_CosChina' , 'DistrictType', 'DISTRICT_THEATER'),
('REQUIRES_THEATER_HAS_3_ADJACENCY_CosChina' , 'YieldType', 'YIELD_CULTURE'),
('REQUIRES_THEATER_HAS_3_ADJACENCY_CosChina' , 'Amount', '3');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('KUBLAI_HIGH_THEATER_ADJACENCY_CULTURE_CosChina', 'YieldTypeToMirror', 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('KUBLAI_HIGH_THEATER_ADJACENCY_CULTURE_CosChina', 'YieldTypeToGrant', 'YIELD_CULTURE');
--加四以上商业提供等量文化
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_KUBLAI', 'KUBLAI_HIGH_COMMERCIAL_HUB_ADJACENCY_CULTURE_CosChina');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('KUBLAI_HIGH_COMMERCIAL_HUB_ADJACENCY_CULTURE_CosChina' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS', 'DISTRICT_IS_HIGH_COMMERCIAL_HUB_CosChina');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('DISTRICT_IS_HIGH_COMMERCIAL_HUB_CosChina' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('DISTRICT_IS_HIGH_COMMERCIAL_HUB_CosChina' , 'REQUIRES_DISTRICT_IS_COMMERCIAL_HUB'),
('DISTRICT_IS_HIGH_COMMERCIAL_HUB_CosChina' , 'REQUIRES_COMMERCIAL_HUB_HAS_4_ADJACENCY_CosChina');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_COMMERCIAL_HUB_HAS_4_ADJACENCY_CosChina' , 'REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
('REQUIRES_COMMERCIAL_HUB_HAS_4_ADJACENCY_CosChina' , 'DistrictType', 'DISTRICT_COMMERCIAL_HUB'),
('REQUIRES_COMMERCIAL_HUB_HAS_4_ADJACENCY_CosChina' , 'YieldType', 'YIELD_GOLD'),
('REQUIRES_COMMERCIAL_HUB_HAS_4_ADJACENCY_CosChina' , 'Amount', '4');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('KUBLAI_HIGH_COMMERCIAL_HUB_ADJACENCY_CULTURE_CosChina', 'YieldTypeToMirror', 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('KUBLAI_HIGH_COMMERCIAL_HUB_ADJACENCY_CULTURE_CosChina', 'YieldTypeToGrant', 'YIELD_CULTURE');
--加四以上港口提供等量文化
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_KUBLAI', 'KUBLAI_HIGH_HARBOR_ADJACENCY_CULTURE_CosChina');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('KUBLAI_HIGH_HARBOR_ADJACENCY_CULTURE_CosChina' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS', 'DISTRICT_IS_HIGH_HARBOR_CosChina');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('DISTRICT_IS_HIGH_HARBOR_CosChina' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('DISTRICT_IS_HIGH_HARBOR_CosChina' , 'REQUIRES_DISTRICT_IS_HARBOR'),
('DISTRICT_IS_HIGH_HARBOR_CosChina' , 'REQUIRES_HARBOR_HAS_4_ADJACENCY_CosChina');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_HARBOR_HAS_4_ADJACENCY_CosChina' , 'REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
('REQUIRES_HARBOR_HAS_4_ADJACENCY_CosChina' , 'DistrictType', 'DISTRICT_HARBOR'),
('REQUIRES_HARBOR_HAS_4_ADJACENCY_CosChina' , 'YieldType', 'YIELD_GOLD'),
('REQUIRES_HARBOR_HAS_4_ADJACENCY_CosChina' , 'Amount', '4');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('KUBLAI_HIGH_HARBOR_ADJACENCY_CULTURE_CosChina', 'YieldTypeToMirror', 'YIELD_GOLD');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('KUBLAI_HIGH_HARBOR_ADJACENCY_CULTURE_CosChina', 'YieldTypeToGrant', 'YIELD_CULTURE');
--加四以上工业提供等量文化
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_KUBLAI', 'KUBLAI_HIGH_INDUSTRIAL_ZONE_ADJACENCY_CULTURE_CosChina');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('KUBLAI_HIGH_INDUSTRIAL_ZONE_ADJACENCY_CULTURE_CosChina' , 'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS', 'DISTRICT_IS_HIGH_INDUSTRIAL_ZONE_CosChina');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('DISTRICT_IS_HIGH_INDUSTRIAL_ZONE_CosChina' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('DISTRICT_IS_HIGH_INDUSTRIAL_ZONE_CosChina' , 'REQUIRES_DISTRICT_IS_INDUSTRIAL_ZONE'),
('DISTRICT_IS_HIGH_INDUSTRIAL_ZONE_CosChina' , 'REQUIRES_INDUSTRIAL_ZONE_HAS_4_ADJACENCY_CosChina');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_INDUSTRIAL_ZONE_HAS_4_ADJACENCY_CosChina' , 'REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
('REQUIRES_INDUSTRIAL_ZONE_HAS_4_ADJACENCY_CosChina' , 'DistrictType', 'DISTRICT_INDUSTRIAL_ZONE'),
('REQUIRES_INDUSTRIAL_ZONE_HAS_4_ADJACENCY_CosChina' , 'YieldType', 'YIELD_PRODUCTION'),
('REQUIRES_INDUSTRIAL_ZONE_HAS_4_ADJACENCY_CosChina' , 'Amount', '4');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('KUBLAI_HIGH_INDUSTRIAL_ZONE_ADJACENCY_CULTURE_CosChina', 'YieldTypeToMirror', 'YIELD_PRODUCTION');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('KUBLAI_HIGH_INDUSTRIAL_ZONE_ADJACENCY_CULTURE_CosChina', 'YieldTypeToGrant', 'YIELD_CULTURE');
--文秦--
--砌砖解锁水渠堤坝
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('FIRST_EMPEROR_TRAIT', 'TRAIT_AQUEDUCT_UNLOCK_MASONRY_CosChina'),
    ('FIRST_EMPEROR_TRAIT', 'TRAIT_DAM_UNLOCK_MASONRY_CosChina');
INSERT INTO Modifiers (ModifierId, ModifierType) VALUES
('TRAIT_AQUEDUCT_UNLOCK_MASONRY_CosChina', 'MODIFIER_PLAYER_ADJUST_DISTRICT_UNLOCK'),
('TRAIT_DAM_UNLOCK_MASONRY_CosChina', 'MODIFIER_PLAYER_ADJUST_DISTRICT_UNLOCK');
INSERT INTO ModifierArguments (ModifierId, Name ,Value) VALUES
('TRAIT_AQUEDUCT_UNLOCK_MASONRY_CosChina', 'DistrictType','DISTRICT_AQUEDUCT'),
('TRAIT_AQUEDUCT_UNLOCK_MASONRY_CosChina', 'TechType','TECH_MASONRY'),
('TRAIT_DAM_UNLOCK_MASONRY_CosChina', 'DistrictType','DISTRICT_DAM'),
('TRAIT_DAM_UNLOCK_MASONRY_CosChina', 'TechType','TECH_MASONRY');
--加速改为16%
UPDATE ModifierArguments SET Value ='16' WHERE ModifierId='TRAIT_BUILDER_WONDER_PERCENT';
--武秦--
--侦察、抗骑兵、海军近战也可以转化蛮族
INSERT INTO TypeTags (Type, Tag) VALUES
('ABILITY_QIN_MELEE_UNITS', 'CLASS_ANTI_CAVALRY'),
('ABILITY_QIN_MELEE_UNITS', 'CLASS_NAVAL_MELEE'),
('ABILITY_QIN_MELEE_UNITS', 'CLASS_RECON');
--武则天--
--间谍位于己方城市时+1宜居度
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_WU_ZETIAN', 'AMENITY_FROM_COUNTERSPY_CosChina');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('AMENITY_FROM_COUNTERSPY_CosChina', 'MODIFIER_PLAYER_CITIES_ADJUST_TRAIT_AMENITY', 'THIS_CITY_HAS_COUNTERSPY');
INSERT INTO ModifierArguments (ModifierId, Name ,Value) VALUES
('AMENITY_FROM_COUNTERSPY_CosChina', 'Amount','1');
--间谍位于己方城市时+5忠诚度
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_WU_ZETIAN', 'LOYALTY_FROM_COUNTERSPY_CosChina');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('LOYALTY_FROM_COUNTERSPY_CosChina', 'MODIFIER_PLAYER_CITIES_ADJUST_IDENTITY_PER_TURN', 'THIS_CITY_HAS_COUNTERSPY');
INSERT INTO ModifierArguments (ModifierId, Name ,Value) VALUES
('LOYALTY_FROM_COUNTERSPY_CosChina', 'Amount','5');
--有总督的城市效果翻三倍
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_WU_ZETIAN', 'AMENITY_FROM_COUNTERSPY_GOVERNOR_CosChina');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('AMENITY_FROM_COUNTERSPY_GOVERNOR_CosChina', 'MODIFIER_PLAYER_CITIES_ADJUST_TRAIT_AMENITY', 'THIS_CITY_HAS_COUNTERSPY_GOVERNOR_CosChina');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('THIS_CITY_HAS_COUNTERSPY_GOVERNOR_CosChina' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('THIS_CITY_HAS_COUNTERSPY_GOVERNOR_CosChina' , 'REQUIRE_THIS_CITY_HAS_COUNTERSPY'),
('THIS_CITY_HAS_COUNTERSPY_GOVERNOR_CosChina' , 'REQUIRES_CITY_HAS_GOVERNOR');
INSERT INTO ModifierArguments (ModifierId, Name ,Value) VALUES
('AMENITY_FROM_COUNTERSPY_GOVERNOR_CosChina', 'Amount','2');
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES 
    ('TRAIT_LEADER_WU_ZETIAN', 'LOYALTY_FROM_COUNTERSPY_GOVERNOR_CosChina');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('LOYALTY_FROM_COUNTERSPY_GOVERNOR_CosChina', 'MODIFIER_PLAYER_CITIES_ADJUST_IDENTITY_PER_TURN', 'THIS_CITY_HAS_COUNTERSPY_GOVERNOR_CosChina');
INSERT INTO ModifierArguments (ModifierId, Name ,Value) VALUES
('LOYALTY_FROM_COUNTERSPY_GOVERNOR_CosChina', 'Amount','10');
--长城+1信仰
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_WU_ZETIAN', 'GREAT_WALL_FAITH_CosChina');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('GREAT_WALL_FAITH_CosChina' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_GREAT_WALL_REQUIREMENTS_CosChina');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('GREAT_WALL_FAITH_CosChina', 'YieldType', 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('GREAT_WALL_FAITH_CosChina', 'Amount', '1');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('PLOT_HAS_GREAT_WALL_REQUIREMENTS_CosChina' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('PLOT_HAS_GREAT_WALL_REQUIREMENTS_CosChina' , 'REQUIRES_PLOT_HAS_GREAT_WALL_CosChina');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_PLOT_HAS_GREAT_WALL_CosChina' , 'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
('REQUIRES_PLOT_HAS_GREAT_WALL_CosChina' , 'ImprovementType', 'IMPROVEMENT_GREAT_WALL');
--朱棣--
--食物里甲改为65%
UPDATE Project_YieldConversions SET PercentOfProductionRate=65 WHERE ProjectType='PROJECT_LIJIA_FOOD';
--金币里甲改为150%
UPDATE Project_YieldConversions SET PercentOfProductionRate=150 WHERE ProjectType='PROJECT_LIJIA_GOLD';
--8人口就有收益
UPDATE Modifiers SET SubjectRequirementSetId='8_POPULATION_REQUIREMENTS_CosChina' WHERE ModifierId='YONGLE_SCIENCE_POPULATION';
UPDATE Modifiers SET SubjectRequirementSetId='8_POPULATION_REQUIREMENTS_CosChina' WHERE ModifierId='YONGLE_CULTURE_POPULATION';
UPDATE Modifiers SET SubjectRequirementSetId='8_POPULATION_REQUIREMENTS_CosChina' WHERE ModifierId='YONGLE_GOLD_POPULATION';
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('8_POPULATION_REQUIREMENTS_CosChina' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId) VALUES
('8_POPULATION_REQUIREMENTS_CosChina' , 'REQUIRES_POPULATION_8_CosChina');
INSERT INTO Requirements (RequirementId , RequirementType)
	VALUES ('REQUIRES_POPULATION_8_CosChina' , 'REQUIREMENT_CITY_HAS_X_POPULATION');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
('REQUIRES_POPULATION_8_CosChina' , 'Amount', '8');
--里甲基础锤提高
UPDATE Projects SET Cost=5000 WHERE ProjectType='PROJECT_LIJIA_FAITH';
UPDATE Projects SET Cost=5000 WHERE ProjectType='PROJECT_LIJIA_FOOD';
UPDATE Projects SET Cost=5000 WHERE ProjectType='PROJECT_LIJIA_GOLD';
--虎蹲炮射程提高，近战力降低，军事工程学解锁
UPDATE Units SET Combat=28, PrereqTech='TECH_MILITARY_ENGINEERING', Range=2 WHERE UnitType='UNIT_CHINESE_CROUCHING_TIGER';