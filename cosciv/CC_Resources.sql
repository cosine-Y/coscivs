--茶叶1粮1科
INSERT INTO Resource_YieldChanges (ResourceType, YieldType, YieldChange)
VALUES('RESOURCE_TEA', 'YIELD_FOOD', 1);
--大理石1锤1文
INSERT INTO Resource_YieldChanges (ResourceType, YieldType, YieldChange)
VALUES('RESOURCE_MARBLE', 'YIELD_PRODUCTION', 1);
--橄榄1锤3金
UPDATE Resource_YieldChanges SET YieldChange=3 WHERE ResourceType='RESOURCE_OLIVES' AND YieldType='YIELD_GOLD';
--银1锤3金
INSERT INTO Resource_YieldChanges (ResourceType, YieldType, YieldChange)
VALUES('RESOURCE_SILVER', 'YIELD_PRODUCTION', 1);
--水银1锤1科
INSERT INTO Resource_YieldChanges (ResourceType, YieldType, YieldChange)
VALUES('RESOURCE_MERCURY', 'YIELD_PRODUCTION', 1);
--熏香1锤1鸽
INSERT INTO Resource_YieldChanges (ResourceType, YieldType, YieldChange)
VALUES('RESOURCE_INCENSE', 'YIELD_PRODUCTION', 1);
--玉1粮1文
INSERT INTO Resource_YieldChanges (ResourceType, YieldType, YieldChange)
VALUES('RESOURCE_JADE', 'YIELD_FOOD', 1);
--珍珠可以在礁石上
INSERT INTO Resource_ValidFeatures (ResourceType, FeatureType)
VALUES('RESOURCE_PEARLS', 'FEATURE_REEF');
--石油可以在草原平原上
INSERT INTO Resource_ValidTerrains (ResourceType, TerrainType)
VALUES('RESOURCE_OIL', 'TERRAIN_PLAINS');
INSERT INTO Resource_ValidTerrains (ResourceType, TerrainType)
VALUES('RESOURCE_OIL', 'TERRAIN_GRASS');
/* --改良资源不必移除地貌
UPDATE Improvement_ValidResources SET MustRemoveFeature=0;
 */