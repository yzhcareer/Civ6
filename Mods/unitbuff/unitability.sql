INSERT INTO Types (Type, Kind)
VALUES
    ("UNIT_EXTRA_XP_MODIFIER", "KIND_MODIFIER"),
    ("UNIT_EXTRA_STRENGTH_MODIFIER", "KIND_MODIFIER"),
    ("UNIT_EXTRA_ATTACK_MODIFIER", "KIND_MODIFIER"),
    ("UNIT_EXTRA_HEALING_MODIFIER", "KIND_MODIFIER"), 
    ("UNIT_CAN_RETREAT_MODIFIER", "KIND_MODIFIER"),
    ("UNIT_EXTRA_XP", "KIND_MODIFIER"),
    ("UNIT_EXTRA_STRENGTH", "KIND_MODIFIER"),
    ("UNIT_EXTRA_ATTACK", "KIND_MODIFIER"),
    ("UNIT_EXTRA_HEALING", "KIND_MODIFIER"), 
    ("UNIT_CAN_RETREAT", "KIND_MODIFIER"),
    ("ABILITY_UNIT_EXTRA_XP", "KIND_ABILITY"),
    ("ABILITY_UNIT_EXTRA_STRENGTH", "KIND_ABILITY"),
    ("ABILITY_UNIT_EXTRA_ATTACK", "KIND_ABILITY"),
    ("ABILITY_UNIT_EXTRA_HEALING", "KIND_ABILITY"),
    ("ABILITY_UNIT_CAN_RETREAT", "KIND_ABILITY");  

INSERT INTO UnitAbilities (UnitAbilityType, Name, Description)
VALUES
    ("ABILITY_UNIT_EXTRA_XP", "LOC_ABILITY_UNIT_EXTRA_XP", "LOC_ABILITY_UNIT_EXTRA_XP_DESC"),
    ("ABILITY_UNIT_EXTRA_STRENGTH", "LOC_ABILITY_UNIT_EXTRA_STRENGTH", "LOC_ABILITY_UNIT_EXTRA_STRENGTH_DESC"),
    ("ABILITY_UNIT_EXTRA_ATTACK", "LOC_ABILITY_UNIT_EXTRA_ATTACK", "LOC_ABILITY_UNIT_EXTRA_ATTACK_DESC"),
    ("ABILITY_UNIT_EXTRA_HEALING", "LOC_ABILITY_UNIT_EXTRA_HEALING", "LOC_ABILITY_UNIT_EXTRA_HEALING_DESC"),
    ("ABILITY_UNIT_CAN_RETREAT", "LOC_ABILITY_UNIT_CAN_RETREAT", "LOC_ABILITY_UNIT_CAN_RETREAT_DESC");

INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId, Permanent)
VALUES
    ("UNIT_EXTRA_XP", "UNIT_EXTRA_XP_MODIFIER",  "PLAYER_IS_HUMAN", 1),
    ("UNIT_EXTRA_STRENGTH", "UNIT_EXTRA_STRENGTH_MODIFIER", "PLAYER_IS_HUMAN", 1),
    ("UNIT_EXTRA_ATTACK", "UNIT_EXTRA_ATTACK_MODIFIER", "PLAYER_IS_HUMAN", 1),
    ("UNIT_EXTRA_HEALING", "UNIT_EXTRA_HEALING_MODIFIER", "PLAYER_IS_HUMAN", 1),
    ("UNIT_CAN_RETREAT", "UNIT_CAN_RETREAT_MODIFIER", "PLAYER_IS_HUMAN", 1);

INSERT INTO DynamicModifiers (ModifierType, CollectionType, EffectType)
VALUES
    ("UNIT_EXTRA_XP_MODIFIER", "COLLECTION_UNIT_COMBAT", "EFFECT_ADJUST_UNIT_EXPERIENCE_MODIFIER"),
    ("UNIT_EXTRA_STRENGTH_MODIFIER", "COLLECTION_UNIT_COMBAT", "EFFECT_ADJUST_PLAYER_STRENGTH_MODIFIER"),
    ("UNIT_EXTRA_ATTACK_MODIFIER", "COLLECTION_UNIT_COMBAT", "EFFECT_ADJUST_UNIT_NUM_ATTACKS"),
    ("UNIT_EXTRA_HEALING_MODIFIER", "COLLECTION_UNIT_COMBAT", "EFFECT_GRANT_HEAL_AFTER_ACTION"),
    ("UNIT_CAN_RETREAT_MODIFIER", "COLLECTION_UNIT_COMBAT", "EFFECT_ADJUST_UNIT_ATTACK_AND_MOVE");


INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES
    ("UNIT_EXTRA_XP", "Amount", 1000),
    ("UNIT_EXTRA_STRENGTH", "Amount", 50),
    ("UNIT_EXTRA_ATTACK", "Amount", 5),
    ("UNIT_EXTRA_HEALING", "Amount", 100),
    ("UNIT_CAN_RETREAT", "CanMove", 1);

INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId)
VALUES
    ("ABILITY_UNIT_EXTRA_XP", "UNIT_EXTRA_XP"),
    ("ABILITY_UNIT_EXTRA_STRENGTH", "UNIT_EXTRA_STRENGTH"),
    ("ABILITY_UNIT_EXTRA_ATTACK", "UNIT_EXTRA_ATTACK"),
    ("ABILITY_UNIT_EXTRA_HEALING", "UNIT_EXTRA_HEALING"),
    ("ABILITY_UNIT_CAN_RETREAT", "UNIT_CAN_RETREAT");

INSERT INTO TypeTags (Type, Tag)
VALUES
    ("ABILITY_UNIT_EXTRA_XP", "CLASS_MELEE"),
    ("ABILITY_UNIT_EXTRA_XP", "CLASS_RANGED"),
    ("ABILITY_UNIT_EXTRA_XP", "CLASS_RECON"),
    ("ABILITY_UNIT_EXTRA_XP", "CLASS_LIGHT_CAVALRY"),
    ("ABILITY_UNIT_EXTRA_XP", "CLASS_HEAVY_CAVALRY"),
    ("ABILITY_UNIT_EXTRA_XP", "CLASS_ANTI_CAVALRY"),
    ("ABILITY_UNIT_EXTRA_XP", "CLASS_SIEGE"),
    ("ABILITY_UNIT_EXTRA_XP", "CLASS_RELIGIOUS"),
    ("ABILITY_UNIT_EXTRA_XP", "CLASS_SUPPORT"),
    ("ABILITY_UNIT_EXTRA_XP", "CLASS_WARRIOR_MONK"),
    ("ABILITY_UNIT_EXTRA_XP", "CLASS_NAVAL_MELEE"),
    ("ABILITY_UNIT_EXTRA_XP", "CLASS_NAVAL_RAIDER"),
    ("ABILITY_UNIT_EXTRA_XP", "CLASS_NAVAL_RANGED"),
    ("ABILITY_UNIT_EXTRA_XP", "CLASS_NAVAL_CARRIER"),
    ("ABILITY_UNIT_EXTRA_XP", "CLASS_AIRCRAFT"),

    ("ABILITY_UNIT_EXTRA_STRENGTH", "CLASS_MELEE"),
    ("ABILITY_UNIT_EXTRA_STRENGTH", "CLASS_RANGED"),
    ("ABILITY_UNIT_EXTRA_STRENGTH", "CLASS_RECON"),
    ("ABILITY_UNIT_EXTRA_STRENGTH", "CLASS_LIGHT_CAVALRY"),
    ("ABILITY_UNIT_EXTRA_STRENGTH", "CLASS_HEAVY_CAVALRY"),
    ("ABILITY_UNIT_EXTRA_STRENGTH", "CLASS_ANTI_CAVALRY"),
    ("ABILITY_UNIT_EXTRA_STRENGTH", "CLASS_SIEGE"),
    ("ABILITY_UNIT_EXTRA_STRENGTH", "CLASS_RELIGIOUS"),
    ("ABILITY_UNIT_EXTRA_STRENGTH", "CLASS_SUPPORT"),
    ("ABILITY_UNIT_EXTRA_STRENGTH", "CLASS_WARRIOR_MONK"),
    ("ABILITY_UNIT_EXTRA_STRENGTH", "CLASS_NAVAL_MELEE"),
    ("ABILITY_UNIT_EXTRA_STRENGTH", "CLASS_NAVAL_RAIDER"),
    ("ABILITY_UNIT_EXTRA_STRENGTH", "CLASS_NAVAL_RANGED"),
    ("ABILITY_UNIT_EXTRA_STRENGTH", "CLASS_NAVAL_CARRIER"),
    ("ABILITY_UNIT_EXTRA_STRENGTH", "CLASS_AIRCRAFT"),

    ("ABILITY_UNIT_EXTRA_ATTACK", "CLASS_MELEE"),
    ("ABILITY_UNIT_EXTRA_ATTACK", "CLASS_RANGED"),
    ("ABILITY_UNIT_EXTRA_ATTACK", "CLASS_RECON"),
    ("ABILITY_UNIT_EXTRA_ATTACK", "CLASS_LIGHT_CAVALRY"),
    ("ABILITY_UNIT_EXTRA_ATTACK", "CLASS_HEAVY_CAVALRY"),
    ("ABILITY_UNIT_EXTRA_ATTACK", "CLASS_ANTI_CAVALRY"),
    ("ABILITY_UNIT_EXTRA_ATTACK", "CLASS_SIEGE"),
    ("ABILITY_UNIT_EXTRA_ATTACK", "CLASS_RELIGIOUS"),
    ("ABILITY_UNIT_EXTRA_ATTACK", "CLASS_SUPPORT"),
    ("ABILITY_UNIT_EXTRA_ATTACK", "CLASS_WARRIOR_MONK"),
    ("ABILITY_UNIT_EXTRA_ATTACK", "CLASS_NAVAL_MELEE"),
    ("ABILITY_UNIT_EXTRA_ATTACK", "CLASS_NAVAL_RAIDER"),
    ("ABILITY_UNIT_EXTRA_ATTACK", "CLASS_NAVAL_RANGED"),
    ("ABILITY_UNIT_EXTRA_ATTACK", "CLASS_NAVAL_CARRIER"),
    ("ABILITY_UNIT_EXTRA_ATTACK", "CLASS_AIRCRAFT"),

    ("ABILITY_UNIT_EXTRA_HEALING", "CLASS_MELEE"),
    ("ABILITY_UNIT_EXTRA_HEALING", "CLASS_RANGED"),
    ("ABILITY_UNIT_EXTRA_HEALING", "CLASS_RECON"),
    ("ABILITY_UNIT_EXTRA_HEALING", "CLASS_LIGHT_CAVALRY"),
    ("ABILITY_UNIT_EXTRA_HEALING", "CLASS_HEAVY_CAVALRY"),
    ("ABILITY_UNIT_EXTRA_HEALING", "CLASS_ANTI_CAVALRY"),
    ("ABILITY_UNIT_EXTRA_HEALING", "CLASS_SIEGE"),
    ("ABILITY_UNIT_EXTRA_HEALING", "CLASS_RELIGIOUS"),
    ("ABILITY_UNIT_EXTRA_HEALING", "CLASS_SUPPORT"),
    ("ABILITY_UNIT_EXTRA_HEALING", "CLASS_WARRIOR_MONK"),
    ("ABILITY_UNIT_EXTRA_HEALING", "CLASS_NAVAL_MELEE"),
    ("ABILITY_UNIT_EXTRA_HEALING", "CLASS_NAVAL_RAIDER"),
    ("ABILITY_UNIT_EXTRA_HEALING", "CLASS_NAVAL_RANGED"),
    ("ABILITY_UNIT_EXTRA_HEALING", "CLASS_NAVAL_CARRIER"),
    ("ABILITY_UNIT_EXTRA_HEALING", "CLASS_AIRCRAFT"),

    ("ABILITY_UNIT_CAN_RETREAT", "CLASS_MELEE"),
    ("ABILITY_UNIT_CAN_RETREAT", "CLASS_RANGED"),
    ("ABILITY_UNIT_CAN_RETREAT", "CLASS_RECON"),
    ("ABILITY_UNIT_CAN_RETREAT", "CLASS_LIGHT_CAVALRY"),
    ("ABILITY_UNIT_CAN_RETREAT", "CLASS_HEAVY_CAVALRY"),
    ("ABILITY_UNIT_CAN_RETREAT", "CLASS_ANTI_CAVALRY"),
    ("ABILITY_UNIT_CAN_RETREAT", "CLASS_SIEGE"),
    ("ABILITY_UNIT_CAN_RETREAT", "CLASS_RELIGIOUS"),
    ("ABILITY_UNIT_CAN_RETREAT", "CLASS_SUPPORT"),
    ("ABILITY_UNIT_CAN_RETREAT", "CLASS_WARRIOR_MONK"),
    ("ABILITY_UNIT_CAN_RETREAT", "CLASS_NAVAL_MELEE"),
    ("ABILITY_UNIT_CAN_RETREAT", "CLASS_NAVAL_RAIDER"),
    ("ABILITY_UNIT_CAN_RETREAT", "CLASS_NAVAL_RANGED"),
    ("ABILITY_UNIT_CAN_RETREAT", "CLASS_NAVAL_CARRIER"),
    ("ABILITY_UNIT_CAN_RETREAT", "CLASS_AIRCRAFT");

