INSERT INTO Types (Type, Kind)
VALUES
    ("CITY_BUFF", "KIND_TRAIT");


INSERT INTO TraitModifiers (TraitType, ModifierId)
VALUES 
    ("TRAIT_LEADER_MAJOR_CIV", "CITIZEN_EXTRA_PRODUCTION"),
    ("TRAIT_LEADER_MAJOR_CIV", "CITIZEN_EXTRA_GOLD"),
    ("TRAIT_LEADER_MAJOR_CIV", "CITIZEN_EXTRA_CULTURE"),
    ("TRAIT_LEADER_MAJOR_CIV", "CITIZEN_EXTRA_SCIENCE"),
    ("TRAIT_LEADER_MAJOR_CIV", "CITIZEN_EXTRA_FAITH"),
    ("TRAIT_LEADER_MAJOR_CIV", "CITIZEN_EXTRA_FOOD"),
    ("TRAIT_LEADER_MAJOR_CIV", "CITY_EXTRA_HOUSE"),
    ("TRAIT_LEADER_MAJOR_CIV", "CITY_EXTRA_AMENITY"),
    ("TRAIT_LEADER_MAJOR_CIV", "CITY_EXTRA_APPEAL"),
    ("TRAIT_LEADER_MAJOR_CIV", "CIV_EXTRA_INFLUENCE"),
    ("TRAIT_LEADER_MAJOR_CIV", "CIV_EXTRA_GREAT_PEOPLE"),
    ("TRAIT_LEADER_MAJOR_CIV", "CIV_EXTRA_RELIC");


INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
VALUES
    ("CITIZEN_EXTRA_PRODUCTION", "MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER", "PLAYER_IS_HUMAN"),
    ("CITIZEN_EXTRA_GOLD", "MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER", "PLAYER_IS_HUMAN"),
    ("CITIZEN_EXTRA_CULTURE", "MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER", "PLAYER_IS_HUMAN"),
    ("CITIZEN_EXTRA_SCIENCE", "MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER", "PLAYER_IS_HUMAN"),
    ("CITIZEN_EXTRA_FAITH", "MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER", "PLAYER_IS_HUMAN"),
    ("CITIZEN_EXTRA_FOOD", "MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER", "PLAYER_IS_HUMAN"),
    ("CITY_EXTRA_HOUSE", "MODIFIER_PLAYER_CITIES_ADJUST_POLICY_HOUSING", "PLAYER_IS_HUMAN"),
    ("CITY_EXTRA_AMENITY", "MODIFIER_PLAYER_CITIES_ADJUST_POLICY_AMENITY", "PLAYER_IS_HUMAN"),
    ("CITY_EXTRA_APPEAL", "MODIFIER_PLAYER_CITIES_ADJUST_CITY_APPEAL", "PLAYER_IS_HUMAN"),
    ("CIV_EXTRA_INFLUENCE", "MODIFIER_PLAYER_ADJUST_INFLUENCE_POINTS_PER_TURN", "PLAYER_IS_HUMAN"),
    ("CIV_EXTRA_GREAT_PEOPLE", "MODIFIER_PLAYER_GOVERNMENT_FLAT_BONUS", "PLAYER_IS_HUMAN"),
    ("CIV_EXTRA_RELIC", "MODIFIER_PLAYER_ADJUST_NATURAL_WONDER_RELIC", "PLAYER_IS_HUMAN");  


INSERT INTO Modifiers (ModifierId, ModifierType)
VALUES
    ("CITIZEN_EXTRA_PRODUCTION_MODIFIER", "MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD"),
    ("CITIZEN_EXTRA_GOLD_MODIFIER", "MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD"),
    ("CITIZEN_EXTRA_CULTURE_MODIFIER", "MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD"),
    ("CITIZEN_EXTRA_SCIENCE_MODIFIER", "MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD"),
    ("CITIZEN_EXTRA_FAITH_MODIFIER", "MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD"),
    ("CITIZEN_EXTRA_FOOD_MODIFIER", "MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD");


INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES
    ("CITIZEN_EXTRA_PRODUCTION", "ModifierId", "CITIZEN_EXTRA_PRODUCTION_MODIFIER"),
    ("CITIZEN_EXTRA_PRODUCTION_MODIFIER", "YieldType", "YIELD_PRODUCTION"),
    ("CITIZEN_EXTRA_PRODUCTION_MODIFIER", "Amount", "5"),
    ("CITIZEN_EXTRA_GOLD", "ModifierId", "CITIZEN_EXTRA_GOLD_MODIFIER"),
    ("CITIZEN_EXTRA_GOLD_MODIFIER", "YieldType", "YIELD_GOLD"),
    ("CITIZEN_EXTRA_GOLD_MODIFIER", "Amount", "5"),
    ("CITIZEN_EXTRA_CULTURE", "ModifierId", "CITIZEN_EXTRA_CULTURE_MODIFIER"),
    ("CITIZEN_EXTRA_CULTURE_MODIFIER", "YieldType", "YIELD_CULTURE"),
    ("CITIZEN_EXTRA_CULTURE_MODIFIER", "Amount", "3"),
    ("CITIZEN_EXTRA_SCIENCE", "ModifierId", "CITIZEN_EXTRA_SCIENCE_MODIFIER"),
    ("CITIZEN_EXTRA_SCIENCE_MODIFIER", "YieldType", "YIELD_SCIENCE"),
    ("CITIZEN_EXTRA_SCIENCE_MODIFIER", "Amount", "3"),  
    ("CITIZEN_EXTRA_FAITH", "ModifierId", "CITIZEN_EXTRA_FAITH_MODIFIER"),
    ("CITIZEN_EXTRA_FAITH_MODIFIER", "YieldType", "YIELD_FAITH"),
    ("CITIZEN_EXTRA_FAITH", "Amount", "3"),
    ("CITIZEN_EXTRA_FOOD", "ModifierId", "CITIZEN_EXTRA_FOOD_MODIFIER"),
    ("CITIZEN_EXTRA_FOOD_MODIFIER", "YieldType", "YIELD_FOOD"),
    ("CITIZEN_EXTRA_FOOD_MODIFIER", "Amount", "5"),
    ("CITY_EXTRA_HOUSE", "Amount", "4"),
    ("CITY_EXTRA_AMENITY", "Amount", "2"),
    ("CITY_EXTRA_APPEAL", "Amount", "2"),
    ("CIV_EXTRA_INFLUENCE", "Amount", "2"),
    ("CIV_EXTRA_GREAT_PEOPLE", "BonusType", "GOVERNMENTBONUS_GREAT_PEOPLE"),
    ("CIV_EXTRA_GREAT_PEOPLE", "Amount", "2"),
    ("CIV_EXTRA_RELIC", "Amount", "1");

