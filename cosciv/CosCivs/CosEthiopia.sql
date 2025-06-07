--埃塞俄比亚
--独石教堂--
--神秘主义解锁
UPDATE Improvements SET PrereqCivic	='CIVIC_MYSTICISM' WHERE ImprovementType='IMPROVEMENT_ROCK_HEWN_CHURCH'; 
--基础+2信仰
UPDATE Improvement_YieldChanges SET YieldChange	= 2 WHERE ImprovementType='IMPROVEMENT_ROCK_HEWN_CHURCH' AND YieldType='YIELD_FAITH'; 
--神学加1粮
INSERT INTO Improvement_YieldChanges (ImprovementType, YieldType, YieldChange) VALUES
    ('IMPROVEMENT_ROCK_HEWN_CHURCH', 'YIELD_FOOD', 0),
    ('IMPROVEMENT_ROCK_HEWN_CHURCH', 'YIELD_PRODUCTION', 0);
INSERT INTO Improvement_BonusYieldChanges (ImprovementType, YieldType, BonusYieldChange, PrereqTech, PrereqCivic) VALUES
    ('IMPROVEMENT_ROCK_HEWN_CHURCH', 'YIELD_FOOD', 1, NULL, 'CIVIC_THEOLOGY');
--王权神授加1锤
INSERT INTO Improvement_BonusYieldChanges (ImprovementType, YieldType, BonusYieldChange, PrereqTech, PrereqCivic) VALUES
    ('IMPROVEMENT_ROCK_HEWN_CHURCH', 'YIELD_PRODUCTION', 1, NULL, 'CIVIC_DIVINE_RIGHT');

--一级关联丘陵
UPDATE StartBiasTerrains SET Tier=1 WHERE TerrainType='TERRAIN_GRASS_HILLS' AND CivilizationType='CIVILIZATION_ETHIOPIA';
UPDATE StartBiasTerrains SET Tier=1 WHERE TerrainType='TERRAIN_PLAINS_HILLS' AND CivilizationType='CIVILIZATION_ETHIOPIA';