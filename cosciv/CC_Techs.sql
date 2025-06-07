--天文导航不需要占星
DELETE FROM TechnologyPrereqs WHERE Technology='TECH_CELESTIAL_NAVIGATION' and PrereqTech='TECH_ASTROLOGY';
--天文导航开拓者下海
/* UPDATE Technologies SET EmbarkUnitType='UNIT_TRADER,UNIT_SETTLER' WHERE TechnologyType='TECH_CELESTIAL_NAVIGATION'; */
--天文导航所有单位下海
UPDATE Technologies SET EmbarkAll=1 WHERE TechnologyType='TECH_CELESTIAL_NAVIGATION';
--天文导航不需要鱼
UPDATE Boosts SET RequiresResource=0 WHERE TechnologyType='TECH_CELESTIAL_NAVIGATION';
--蛮族初始没有造船术
UPDATE Technologies SET BarbarianFree=0 WHERE TechnologyType='TECH_SHIPBUILDING';
--

--

--

--