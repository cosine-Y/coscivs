--西班牙
--传教团--
--基础+1锤
UPDATE Improvement_YieldChanges SET YieldChange='1' WHERE ImprovementType='IMPROVEMENT_MISSION' AND YieldType='YIELD_PRODUCTION';
--异大陆不加锤
DELETE FROM ImprovementModifiers WHERE ImprovementType='IMPROVEMENT_MISSION' AND ModifierID='MISSION_NEWCONTINENT_PRODUCTION';
--+0.5住房
UPDATE Improvements SET Housing=1,TilesRequired=2 WHERE ImprovementType='IMPROVEMENT_MISSION';
--加科技提前至自然历史
UPDATE Improvement_BonusYieldChanges SET PrereqCivic='CIVIC_NATURAL_HISTORY' WHERE ImprovementType='IMPROVEMENT_MISSION';
--可以建造在泛滥平原上
INSERT INTO Improvement_ValidFeatures (ImprovementType, FeatureType) VALUES
    ('IMPROVEMENT_MISSION', 'FEATURE_FLOODPLAINS'),
	('IMPROVEMENT_MISSION', 'FEATURE_FLOODPLAINS_PLAINS'),
	('IMPROVEMENT_MISSION', 'FEATURE_FLOODPLAINS_GRASSLAND');
--一级关联地热
UPDATE StartBiasFeatures SET Tier=1 WHERE CivilizationType='CIVILIZATION_SPAIN' AND FeatureType='FEATURE_GEOTHERMAL_FISSURE'; 