--自由探索--
--商业港口额外区域位

--百花齐放--
--区域加速

--区域+1锤1金

--雄伟壮丽--

--布道者--
--圣地+2大仙点
UPDATE Modifiers SET ModifierType='MODIFIER_PLAYER_DISTRICTS_ADJUST_GREAT_PERSON_POINTS', SubjectRequirementSetId='DISTRICT_IS_HOLY_SITE' WHERE ModifierId='COMMEMORATION_RELIGIOUS_GA_GREAT_PROPHET_POINTS';
UPDATE ModifierArguments SET Value='2' WHERE ModifierId='COMMEMORATION_RELIGIOUS_GA_GREAT_PROPHET_POINTS' AND Name='Amount';
--此处有龙--
--新城市+3人口
UPDATE Modifiers SET ModifierType='MODIFIER_PLAYER_CITIES_ADD_POPULATION', Permanent=1, NewOnly=1 WHERE ModifierId='COMMEMORATION_EXPLORATION_GA_NEW_CITY_POPULATION';
--贸易改革--

--滚滚蒸汽--

--全民皆兵--

--愿你在此--

--满天繁星--

--兵不厌诈--

--机器人大战--