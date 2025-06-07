--大堡礁加一锤
INSERT OR REPLACE INTO Feature_YieldChanges(FeatureType,YieldType,YieldChange)
    VALUES("FEATURE_BARRIER_REEF","YIELD_PRODUCTION",1);
--多佛白崖不会相邻山脉,且加一粮
INSERT OR REPLACE INTO Feature_NotAdjacentTerrains(FeatureType,TerrainType)
    VALUES("FEATURE_CLIFFS_DOVER","TERRAIN_GRASS_MOUNTAIN");
INSERT OR REPLACE INTO Feature_NotAdjacentTerrains(FeatureType,TerrainType)
    VALUES("FEATURE_CLIFFS_DOVER","TERRAIN_PLAINS_MOUNTAIN");
INSERT OR REPLACE INTO Feature_NotAdjacentTerrains(FeatureType,TerrainType)
    VALUES("FEATURE_CLIFFS_DOVER","TERRAIN_DESERT_MOUNTAIN");
INSERT OR REPLACE INTO Feature_NotAdjacentTerrains(FeatureType,TerrainType)
    VALUES("FEATURE_CLIFFS_DOVER","TERRAIN_TUNDRA_MOUNTAIN");
INSERT OR REPLACE INTO Feature_NotAdjacentTerrains(FeatureType,TerrainType)
    VALUES("FEATURE_CLIFFS_DOVER","TERRAIN_SNOW_MOUNTAIN");
UPDATE Feature_YieldChanges SET YieldChange='3' WHERE FeatureType='FEATURE_CLIFFS_DOVER' and YieldType='YIELD_FOOD';
--火山口湖加一粮二金
INSERT OR REPLACE INTO Feature_YieldChanges(FeatureType,YieldType,YieldChange)
    VALUES("FEATURE_CRATER_LAKE","YIELD_FOOD",1);
INSERT OR REPLACE INTO Feature_YieldChanges(FeatureType,YieldType,YieldChange)
    VALUES("FEATURE_CRATER_LAKE","YIELD_GOLD",2);
--死海加2文加2信仰
UPDATE Feature_YieldChanges SET YieldChange='4' WHERE FeatureType='FEATURE_DEAD_SEA' and YieldType='YIELD_CULTURE';
UPDATE Feature_YieldChanges SET YieldChange='4' WHERE FeatureType='FEATURE_DEAD_SEA' and YieldType='YIELD_FAITH';
--潘塔纳尔湿地加一粮一科
INSERT OR REPLACE INTO Feature_YieldChanges(FeatureType,YieldType,YieldChange)
    VALUES("FEATURE_PANTANAL","YIELD_SCIENCE",1);
UPDATE Feature_YieldChanges SET YieldChange='3' WHERE FeatureType='FEATURE_PANTANAL' and YieldType='YIELD_FOOD';
--下龙湾加一文
UPDATE Feature_YieldChanges SET YieldChange='2' WHERE FeatureType='FEATURE_HA_LONG_BAY' and YieldType='YIELD_CULTURE';
--撒哈拉之眼加3金
INSERT OR REPLACE INTO Feature_YieldChanges(FeatureType,YieldType,YieldChange)
    VALUES("FEATURE_EYE_OF_THE_SAHARA","YIELD_GOLD",3);
--玫瑰湖加1文2金
UPDATE Feature_YieldChanges SET YieldChange='4' WHERE FeatureType='FEATURE_LAKE_RETBA' and YieldType='YIELD_GOLD';
UPDATE Feature_YieldChanges SET YieldChange='3' WHERE FeatureType='FEATURE_LAKE_RETBA' and YieldType='YIELD_CULTURE';
--乌布苏盆地加2信仰2锤
UPDATE Feature_YieldChanges SET YieldChange='4' WHERE FeatureType='FEATURE_UBSUNUR_HOLLOW' and YieldType='YIELD_FAITH';
UPDATE Feature_YieldChanges SET YieldChange='3' WHERE FeatureType='FEATURE_UBSUNUR_HOLLOW' and YieldType='YIELD_PRODUCTION';
--巧克力山加1粮1锤
UPDATE Feature_YieldChanges SET YieldChange='2' WHERE FeatureType='FEATURE_CHOCOLATEHILLS' and YieldType='YIELD_FOOD';
UPDATE Feature_YieldChanges SET YieldChange='3' WHERE FeatureType='FEATURE_CHOCOLATEHILLS' and YieldType='YIELD_PRODUCTION';
--戈布斯坦国家公园加3锤1文
UPDATE Feature_YieldChanges SET YieldChange='4' WHERE FeatureType='FEATURE_GOBUSTAN' and YieldType='YIELD_CULTURE';
UPDATE Feature_YieldChanges SET YieldChange='4' WHERE FeatureType='FEATURE_GOBUSTAN' and YieldType='YIELD_PRODUCTION';
--白沙漠加一科一文
UPDATE Feature_YieldChanges SET YieldChange='2' WHERE FeatureType='FEATURE_WHITEDESERT' and YieldType='YIELD_CULTURE';
UPDATE Feature_YieldChanges SET YieldChange='2' WHERE FeatureType='FEATURE_WHITEDESERT' and YieldType='YIELD_SCIENCE';
--青春之泉加一粮
INSERT OR REPLACE INTO Feature_YieldChanges(FeatureType,YieldType,YieldChange)
    VALUES("FEATURE_FOUNTAIN_OF_YOUTH","YIELD_FOOD",1);
--珠穆朗玛峰加1信仰1锤
UPDATE Feature_AdjacentYields SET YieldChange='2' WHERE FeatureType='FEATURE_EVEREST' and YieldType='YIELD_FAITH';
INSERT OR REPLACE INTO Feature_AdjacentYields(FeatureType,YieldType,YieldChange)
    VALUES("FEATURE_EVEREST","YIELD_PRODUCTION",1);
--加拉帕戈斯群岛不会相邻海洋
INSERT OR REPLACE INTO Feature_NotAdjacentTerrains(FeatureType,TerrainType)
    VALUES("FEATURE_GALAPAGOS","TERRAIN_OCEAN");
--贝马拉哈国家公园加2金
INSERT OR REPLACE INTO Feature_AdjacentYields(FeatureType,YieldType,YieldChange)
    VALUES("FEATURE_TSINGY","YIELD_GOLD",2);
--米尔福德峡湾不会相邻山脉且相邻加2金1粮
INSERT OR REPLACE INTO Feature_NotAdjacentTerrains(FeatureType,TerrainType)
    VALUES("FEATURE_PIOPIOTAHI","TERRAIN_GRASS_MOUNTAIN");
INSERT OR REPLACE INTO Feature_NotAdjacentTerrains(FeatureType,TerrainType)
    VALUES("FEATURE_PIOPIOTAHI","TERRAIN_PLAINS_MOUNTAIN");
INSERT OR REPLACE INTO Feature_NotAdjacentTerrains(FeatureType,TerrainType)
    VALUES("FEATURE_PIOPIOTAHI","TERRAIN_DESERT_MOUNTAIN");
INSERT OR REPLACE INTO Feature_NotAdjacentTerrains(FeatureType,TerrainType)
    VALUES("FEATURE_PIOPIOTAHI","TERRAIN_TUNDRA_MOUNTAIN");
INSERT OR REPLACE INTO Feature_NotAdjacentTerrains(FeatureType,TerrainType)
    VALUES("FEATURE_PIOPIOTAHI","TERRAIN_SNOW_MOUNTAIN");
UPDATE Feature_AdjacentYields SET YieldChange='3' WHERE FeatureType='FEATURE_PIOPIOTAHI' and YieldType='YIELD_GOLD';
INSERT OR REPLACE INTO Feature_AdjacentYields(FeatureType,YieldType,YieldChange)
    VALUES("FEATURE_PIOPIOTAHI","YIELD_FOOD",1);
--吕瑟峡湾加2金
INSERT OR REPLACE INTO Feature_AdjacentYields(FeatureType,YieldType,YieldChange)
    VALUES("FEATURE_LYSEFJORDEN","YIELD_GOLD",2);
--乌卢鲁加2文
UPDATE Feature_AdjacentYields SET YieldChange='4' WHERE FeatureType='FEATURE_ULURU' and YieldType='YIELD_CULTURE';
--精致拱门加3金
UPDATE Feature_AdjacentYields SET YieldChange='4' WHERE FeatureType='FEATURE_DELICATE_ARCH' and YieldType='YIELD_GOLD';
--魔鬼塔加1粮
INSERT OR REPLACE INTO Feature_AdjacentYields(FeatureType,YieldType,YieldChange)
    VALUES("FEATURE_DEVILSTOWER","YIELD_FOOD",1);
--维苏威加2金
INSERT OR REPLACE INTO Feature_AdjacentYields(FeatureType,YieldType,YieldChange)
    VALUES("FEATURE_VESUVIUS","YIELD_GOLD",2);
--百慕大可以相邻海岸
DELETE FROM Feature_NotAdjacentTerrains 
    WHERE FeatureType="FEATURE_BERMUDA_TRIANGLE" AND TerrainType="TERRAIN_COAST";
--黄金国不会相邻山脉
INSERT OR REPLACE INTO Feature_NotAdjacentTerrains(FeatureType,TerrainType)
    VALUES("FEATURE_PAITITI","TERRAIN_GRASS_MOUNTAIN");
INSERT OR REPLACE INTO Feature_NotAdjacentTerrains(FeatureType,TerrainType)
    VALUES("FEATURE_PAITITI","TERRAIN_PLAINS_MOUNTAIN");
INSERT OR REPLACE INTO Feature_NotAdjacentTerrains(FeatureType,TerrainType)
    VALUES("FEATURE_PAITITI","TERRAIN_DESERT_MOUNTAIN");
INSERT OR REPLACE INTO Feature_NotAdjacentTerrains(FeatureType,TerrainType)
    VALUES("FEATURE_PAITITI","TERRAIN_TUNDRA_MOUNTAIN");
INSERT OR REPLACE INTO Feature_NotAdjacentTerrains(FeatureType,TerrainType)
    VALUES("FEATURE_PAITITI","TERRAIN_SNOW_MOUNTAIN");
--百内国家公园可以相邻资源，且周围一定有树林
INSERT OR REPLACE INTO Feature_AdjacentFeatures(FeatureType,FeatureTypeAdjacent)
    VALUES("FEATURE_TORRES_DEL_PAINE","FEATURE_FOREST");
UPDATE Features SET NoResource = 0  WHERE FeatureType = "FEATURE_TORRES_DEL_PAINE";

