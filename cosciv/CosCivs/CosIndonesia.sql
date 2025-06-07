--印度尼西亚
--海岸湖泊提供标准加成
UPDATE ModifierArguments SET Value='1' WHERE ModifierId='TRAIT_NUSANTARA_COAST_HOLY_SITE' AND Name='TilesRequired';
UPDATE ModifierArguments SET Value='1' WHERE ModifierId='TRAIT_NUSANTARA_COAST_CAMPUS' AND Name='TilesRequired';
UPDATE ModifierArguments SET Value='1' WHERE ModifierId='TRAIT_NUSANTARA_COAST_INDUSTRIAL_ZONE' AND Name='TilesRequired';
UPDATE ModifierArguments SET Value='1' WHERE ModifierId='TRAIT_NUSANTARA_COAST_THEATER' AND Name='TilesRequired';
--特丽布瓦纳--
--海岸湖泊加一信仰
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES ('TRAIT_LEADER_EXALTED_GODDESS', 'INCREASED_COAST_FAITH_CosIndonesia');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
	VALUES 	('INCREASED_COAST_FAITH_CosIndonesia' , 'MODIFIER_PLAYER_ADJUST_PLOT_YIELD', 'PLOT_HAS_COAST_REQUIREMENTS');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('INCREASED_COAST_FAITH_CosIndonesia' , 'YieldType', 'YIELD_FAITH');
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES 	('INCREASED_COAST_FAITH_CosIndonesia' , 'Amount', '1');
--甘榜屋--
--不必相邻海洋资源
UPDATE Improvements SET AdjacentSeaResource = 0 WHERE ImprovementType='IMPROVEMENT_KAMPUNG'; 
--加锤提前至行政部门
UPDATE Improvement_BonusYieldChanges SET PrereqCivic ='CIVIC_CIVIL_SERVICE' WHERE ImprovementType='IMPROVEMENT_KAMPUNG'; 
--相邻2个甘榜屋加锤
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId) VALUES
    ('IMPROVEMENT_KAMPUNG', 'Kampung_Production_CosIndonesia');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentTerrain, AdjacentFeature, AdjacentImprovement, AdjacentDistrict, PrereqCivic, PrereqTech, ObsoleteCivic, ObsoleteTech) VALUES
('Kampung_Production_CosIndonesia', 'Placeholder', 'YIELD_PRODUCTION', 1, 2, NULL, NULL, 'IMPROVEMENT_KAMPUNG', NULL, NULL, NULL, NULL, NULL);
--相邻渔船加锤
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId) VALUES
    ('IMPROVEMENT_KAMPUNG', 'Kampung_Production2_CosIndonesia');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentTerrain, AdjacentFeature, AdjacentImprovement, AdjacentDistrict, PrereqCivic, PrereqTech, ObsoleteCivic, ObsoleteTech) VALUES
('Kampung_Production2_CosIndonesia', 'Placeholder', 'YIELD_PRODUCTION', 1, 1, NULL, NULL, 'IMPROVEMENT_FISHING_BOATS', NULL, NULL, NULL, NULL, NULL);
--一级关联海岸
UPDATE StartBiasTerrains SET Tier=1 WHERE CivilizationType='CIVILIZATION_INDONESIA' AND TerrainType='TERRAIN_COAST';