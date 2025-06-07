--城邦不容易被压
updaTe GlobalParameters set Value = 100 where Name = 'IDENTITY_PER_TURN_FROM_CITY_STATES';
--移巨作冷却1回合
updaTe GlobalParameters set Value = 1 where Name = 'GREATWORK_ART_LOCK_TIME';

-- --买五环地(似乎没用）
-- updaTe GlobalParameters set Value = 5 where Name = 'CITY_MAX_BUY_PLOT_RANGE';

-- --信仰切政策
-- updaTe GlobalParameters set Value = 1 where Name = 'GOVERNMENT_UNLOCK_WITH_FAITH';

--国家公园给金币
updaTe GlobalParameters set Value = 2 where Name = 'NATIONAL_PARK_GOLD_YIELD_PER_TOURISM';

--冰变少
updaTe GlobalParameters set Value = 10 where Name = 'ICE_TILES_PERCENT';

--{1_Tooltip}[NEWLINE]Overall [ICON_Tourism] Tourism Boosted +{2_Percent}% from Luxury Resource Monopolies

-- --城邦不扩地
-- UPDATE CivilizationLevels SET CanAnnexTilesWithReceivedInfluence=0 WHERE CivilizationLevelType='CIVILIZATION_LEVEL_CITY_STATE';

--城邦4使者开始扩地
UPDATE CivilizationLevels SET StartingTilesForCity=3 WHERE CivilizationLevelType='CIVILIZATION_LEVEL_CITY_STATE'; 

--初始地块数
-- UPDATE CivilizationLevels SET StartingTilesForCity=10 WHERE CivilizationLevelType='CIVILIZATION_LEVEL_FULL_CIV';

