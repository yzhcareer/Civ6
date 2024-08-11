UPDATE Improvements SET TilesPerGoody = 7 WHERE ImprovementType = 'IMPROVEMENT_GOODY_HUT';
UPDATE Improvements SET GoodyRange = 1 WHERE ImprovementType = 'IMPROVEMENT_GOODY_HUT';
UPDATE Improvements SET DispersalGold = 1000 WHERE ImprovementType = 'IMPROVEMENT_BARBARIAN_CAMP';
UPDATE Improvements SET Goody = 1 WHERE ImprovementType = 'IMPROVEMENT_BARBARIAN_CAMP';

UPDATE GlobalParameters SET Value = 10 WHERE Name = 'BARBARIAN_CAMP_MAX_PER_MAJOR_CITY';
UPDATE GlobalParameters SET Value = 4 WHERE Name = 'BARBARIAN_CAMP_MININUM_DISTANCE_ANOTHER_CAMP';
UPDATE GlobalParameters SET Value = 3 WHERE Name = 'BARBARIAN_CAMP_MININUM_DISTANCE_CITY';
UPDATE GlobalParameters SET Value = 100 WHERE Name = 'BARBARIAN_TECH_PERCENT';
UPDATE GlobalParameters SET Value = 8 WHERE Name = 'BARBARIAN_CAMP_ODDS_OF_NEW_CAMP_SPAWNING';
UPDATE GlobalParameters SET Value = 5 WHERE Name = 'BARBARIAN_NUM_RANDOM_UNIT_CHOICES';

UPDATE GoodyHutSubTypes SET Weight = 50 WHERE SubTypeGoodyHut = 'GOODYHUT_ONE_RELIC';
UPDATE GoodyHutSubTypes SET Weight = 25 WHERE SubTypeGoodyHut = 'GOODYHUT_TWO_CIVIC_BOOSTS';
UPDATE GoodyHutSubTypes SET Weight = 25 WHERE SubTypeGoodyHut = 'GOODYHUT_ONE_CIVIC_BOOST';

UPDATE GoodyHutSubTypes SET Weight = 50 WHERE SubTypeGoodyHut = 'GOODYHUT_LARGE_GOLD';
UPDATE GoodyHutSubTypes SET Weight = 30 WHERE SubTypeGoodyHut = 'GOODYHUT_MEDIUM_GOLD';
UPDATE GoodyHutSubTypes SET Weight = 20 WHERE SubTypeGoodyHut = 'GOODYHUT_SMALL_GOLD';

UPDATE GoodyHutSubTypes SET Weight = 50 WHERE SubTypeGoodyHut = 'GOODYHUT_LARGE_FAITH';
UPDATE GoodyHutSubTypes SET Weight = 30 WHERE SubTypeGoodyHut = 'GOODYHUT_MEDIUM_FAITH';
UPDATE GoodyHutSubTypes SET Weight = 20 WHERE SubTypeGoodyHut = 'GOODYHUT_SMALL_FAITH';

UPDATE GoodyHutSubTypes SET Weight = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_SCOUT';
UPDATE GoodyHutSubTypes SET Weight = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_UPGRADE';
UPDATE GoodyHutSubTypes SET Weight = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_EXPERIENCE';
UPDATE GoodyHutSubTypes SET Weight = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_HEAL';

UPDATE GoodyHutSubTypes SET Weight = 20 WHERE SubTypeGoodyHut = 'GOODYHUT_ONE_TECH';
UPDATE GoodyHutSubTypes SET Weight = 40 WHERE SubTypeGoodyHut = 'GOODYHUT_TWO_TECH_BOOSTS';
UPDATE GoodyHutSubTypes SET Weight = 40 WHERE SubTypeGoodyHut = 'GOODYHUT_ONE_TECH_BOOST';

UPDATE GoodyHutSubTypes SET Weight = 70 WHERE SubTypeGoodyHut = 'GOODYHUT_ADD_POP';
UPDATE GoodyHutSubTypes SET Weight = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_BUILDER';
UPDATE GoodyHutSubTypes SET Weight = 0 WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_TRADER';
UPDATE GoodyHutSubTypes SET Weight = 30 WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_SETTLER';

UPDATE GoodyHuts SET Weight = 60 WHERE GoodyHutType = 'GOODYHUT_CULTURE';
UPDATE GoodyHuts SET Weight = 5 WHERE GoodyHutType = 'GOODYHUT_GOLD';
UPDATE GoodyHuts SET Weight = 5 WHERE GoodyHutType = 'GOODYHUT_FAITH';
UPDATE GoodyHuts SET Weight = 5 WHERE GoodyHutType = 'GOODYHUT_MILITARY';
UPDATE GoodyHuts SET Weight = 5 WHERE GoodyHutType = 'GOODYHUT_SCIENCE';
UPDATE GoodyHuts SET Weight = 120 WHERE GoodyHutType = 'GOODYHUT_SURVIVORS';

UPDATE Units SET PrereqTech = NULL WHERE UnitType = 'UNIT_HORSEMAN';

UPDATE ModifierArguments SET Value = 1000 WHERE ModifierId = 'GOODY_GOLD_LARGE_MODIFIER' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 500 WHERE ModifierId = 'GOODY_GOLD_MEDIUM_MODIFIER' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 250 WHERE ModifierId = 'GOODY_GOLD_SMALL_MODIFIER' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 'PROMOTION_CLASS_LIGHT_CAVALRY' WHERE ModifierId = 'GOODY_MILITARY_GRANT_SCOUT' AND Name = 'UnitPromotionClassType';
--UPDATE ModifierArguments SET Value = 'UNIT_SETTLER' WHERE ModifierId = 'GOODY_SURVIVORS_GRANT_BUILDER' AND Name = 'UnitType';


