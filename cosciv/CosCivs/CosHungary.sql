--匈牙利
--温泉浴场--
--提前至中世纪集市解锁
UPDATE Buildings SET PrereqCivic='CIVIC_MEDIEVAL_FAIRES' WHERE BuildingType='BUILDING_THERMAL_BATH';
--价格更低
UPDATE Buildings SET Cost=280 WHERE BuildingType='BUILDING_THERMAL_BATH';
--本城湖泊地热+1科技1文化
INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES 
    ('BUILDING_THERMAL_BATH', 'THERMAL_BATH_GEOTHERMAL_FISSURE_Sci_Cul_CosHungary');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('THERMAL_BATH_GEOTHERMAL_FISSURE_Sci_Cul_CosHungary', 'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD', 'THERMAL_BATH_GEOTHERMAL_FISSURE_REQUIREMENTS');
INSERT INTO RequirementSets (RequirementSetId , RequirementSetType)
	VALUES ('THERMAL_BATH_GEOTHERMAL_FISSURE_REQUIREMENTS' , 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId , RequirementId)
	VALUES ('THERMAL_BATH_GEOTHERMAL_FISSURE_REQUIREMENTS' , 'REQUIRES_PLOT_HAS_GEOTHERMAL_FIISSURE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('THERMAL_BATH_GEOTHERMAL_FISSURE_Sci_Cul_CosHungary', 'YieldType', 'YIELD_CULTURE,YIELD_SCIENCE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('THERMAL_BATH_GEOTHERMAL_FISSURE_Sci_Cul_CosHungary', 'Amount', '1,1');
INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES 
    ('BUILDING_THERMAL_BATH', 'THERMAL_BATH_LAKE_Sci_Cul_CosHungary');
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('THERMAL_BATH_LAKE_Sci_Cul_CosHungary', 'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD', 'FOODHUEY_PLOT_IS_LAKE_REQUIREMENTS');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('THERMAL_BATH_LAKE_Sci_Cul_CosHungary', 'YieldType', 'YIELD_CULTURE,YIELD_SCIENCE');
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('THERMAL_BATH_LAKE_Sci_Cul_CosHungary', 'Amount', '1,1');
--一级关联河流
UPDATE StartBiasRivers SET Tier=1 WHERE CivilizationType ='CIVILIZATION_HUNGARY';
--二级关联地热
UPDATE StartBiasFeatures SET Tier=2 WHERE CivilizationType='CIVILIZATION_HUNGARY' AND FeatureType='FEATURE_GEOTHERMAL_FISSURE';