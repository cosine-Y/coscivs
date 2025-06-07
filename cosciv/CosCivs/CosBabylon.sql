--巴比伦
--沟渠可以不相邻河流并+1粮
UPDATE Buildings SET RequiresAdjacentRiver=0 WHERE BuildingType ='BUILDING_PALGUM';
INSERT INTO Building_YieldChanges (BuildingType , YieldType,YieldChange)
	VALUES ('BUILDING_PALGUM' , 'YIELD_FOOD' , 1);
--河流二级关联
UPDATE StartBiasRivers SET Tier=2 WHERE CivilizationType ='CIVILIZATION_BABYLON_STK'; 
