--大哥伦比亚
--大庄园--
--封建主义解锁
UPDATE Improvements SET PrereqCivic	='CIVIC_FEUDALISM' WHERE ImprovementType='IMPROVEMENT_HACIENDA'; 
--初始相邻1个种植园+1粮，零件规格化后+2
UPDATE Adjacency_YieldChanges SET TilesRequired=1 WHERE ID='Hacienda_PlantationAdjacency';
UPDATE Adjacency_YieldChanges SET YieldChange=2 WHERE ID='Hacienda_MechanizedPlantationAdjacency';
--初始种植园相邻1个大庄园+1锤
UPDATE Adjacency_YieldChanges SET PrereqCivic=NULL WHERE ID='Plantation_AdvancedHaciendaAdjacency';
DELETE FROM Improvement_Adjacencies WHERE YieldChangeId='Plantation_HaciendaAdjacency';
--相邻1个大庄园+1锤提前至土木工程
UPDATE Adjacency_YieldChanges SET PrereqCivic='CIVIC_CIVIL_ENGINEERING' WHERE ID='Hacienda_AdvancedHaciendaAdjacency';
UPDATE Adjacency_YieldChanges SET ObsoleteCivic='CIVIC_CIVIL_ENGINEERING' WHERE ID='Hacienda_HaciendaAdjacency';
--重商主义相邻1个大庄园+1金币
INSERT INTO Improvement_Adjacencies (ImprovementType, YieldChangeId) VALUES
    ('IMPROVEMENT_HACIENDA', 'Hacienda_HaciendaGold');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentTerrain, AdjacentFeature, AdjacentImprovement, AdjacentDistrict, PrereqCivic, PrereqTech, ObsoleteCivic, ObsoleteTech) VALUES
('Hacienda_HaciendaGold', 'Placeholder', 'YIELD_GOLD', 1, 1, NULL, NULL, 'IMPROVEMENT_HACIENDA', NULL, 'CIVIC_MERCANTILISM', NULL, NULL, NULL);
--可以建造在泛滥上
INSERT INTO Improvement_ValidFeatures (ImprovementType, FeatureType) VALUES
	('IMPROVEMENT_HACIENDA', 'FEATURE_FLOODPLAINS_PLAINS'),
	('IMPROVEMENT_HACIENDA', 'FEATURE_FLOODPLAINS_GRASSLAND');
--关联种植园和马
INSERT INTO StartBiasResources (CivilizationType, ResourceType, Tier) VALUES
('CIVILIZATION_GRAN_COLOMBIA', 'RESOURCE_HORSES', 3),
('CIVILIZATION_GRAN_COLOMBIA', 'RESOURCE_CITRUS', 3),
('CIVILIZATION_GRAN_COLOMBIA', 'RESOURCE_COFFEE', 3),
('CIVILIZATION_GRAN_COLOMBIA', 'RESOURCE_COCOA', 3),
('CIVILIZATION_GRAN_COLOMBIA', 'RESOURCE_COTTON', 3),
('CIVILIZATION_GRAN_COLOMBIA', 'RESOURCE_DYES', 3),
('CIVILIZATION_GRAN_COLOMBIA', 'RESOURCE_SILK', 3),
('CIVILIZATION_GRAN_COLOMBIA', 'RESOURCE_SPICES', 3),
('CIVILIZATION_GRAN_COLOMBIA', 'RESOURCE_SUGAR', 3),
('CIVILIZATION_GRAN_COLOMBIA', 'RESOURCE_TEA', 3),
('CIVILIZATION_GRAN_COLOMBIA', 'RESOURCE_TOBACCO', 3),
('CIVILIZATION_GRAN_COLOMBIA', 'RESOURCE_WINE', 3),
('CIVILIZATION_GRAN_COLOMBIA', 'RESOURCE_INCENSE', 3),
('CIVILIZATION_GRAN_COLOMBIA', 'RESOURCE_OLIVES', 3);