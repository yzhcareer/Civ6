INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent)
VALUES
    ('GOODY_MILITARY_GRANT_HEAVY_CAVALRY', 'MODIFIER_SINGLE_CITY_GRANT_UNIT_BY_CLASS_IN_NEAREST_CITY', 1, 1),
    ('GOODY_MILITARY_GRANT_LIGHT_CAVALRY', 'MODIFIER_SINGLE_CITY_GRANT_UNIT_BY_CLASS_IN_NEAREST_CITY', 1, 1),
    ('GOODY_MILITARY_GRANT_SIEGE', 'MODIFIER_SINGLE_CITY_GRANT_UNIT_BY_CLASS_IN_NEAREST_CITY', 1, 1);

INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId)
VALUES
    ('GOODY_MILITARY_GRANT_RECON', 'MODIFIER_SINGLE_CITY_GRANT_UNIT_BY_CLASS_IN_NEAREST_CITY', 1, 1, 'PLAYER_IS_AI'),
    ('GOODY_MILITARY_GRANT_RANGED', 'MODIFIER_SINGLE_CITY_GRANT_UNIT_BY_CLASS_IN_NEAREST_CITY', 1, 1, 'PLAYER_IS_AI'),
    ('GOODY_MILITARY_GRANT_ANTI_CAVALRY', 'MODIFIER_SINGLE_CITY_GRANT_UNIT_BY_CLASS_IN_NEAREST_CITY', 1, 1, 'PLAYER_IS_AI');

INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
VALUES
    ('GOODY_MILITARY_GRANT_RECON', 'UnitPromotionClassType', 'AGRTYPE_IDENTITY', 'PROMOTION_CLASS_RECON'),
    ('GOODY_MILITARY_GRANT_RANGED', 'UnitPromotionClassType', 'AGRTYPE_IDENTITY', 'PROMOTION_CLASS_RANGED'),
    ('GOODY_MILITARY_GRANT_ANTI_CAVALRY', 'UnitPromotionClassType', 'AGRTYPE_IDENTITY', 'PROMOTION_CLASS_ANTI_CAVALRY'),
    ('GOODY_MILITARY_GRANT_HEAVY_CAVALRY', 'UnitPromotionClassType', 'AGRTYPE_IDENTITY', 'PROMOTION_CLASS_HEAVY_CAVALRY'),
    ('GOODY_MILITARY_GRANT_LIGHT_CAVALRY', 'UnitPromotionClassType', 'AGRTYPE_IDENTITY', 'PROMOTION_CLASS_LIGHT_CAVALRY'),
    ('GOODY_MILITARY_GRANT_SIEGE', 'UnitPromotionClassType', 'AGRTYPE_IDENTITY', 'PROMOTION_CLASS_SIEGE');

INSERT INTO GoodyHutSubTypes (GoodyHut, SubTypeGoodyHut, Weight, ModifierId, MinOneCity, RequiresUnit, Description)
VALUES
    ('GOODYHUT_MILITARY', 'GOODYHUT_GRANT_RECON', 15, 'GOODY_MILITARY_GRANT_RECON', 1, 1, 'LOC_GOODY_NULL_DESCRIPTION'),
    ('GOODYHUT_MILITARY', 'GOODYHUT_GRANT_RANGED', 15, 'GOODY_MILITARY_GRANT_RANGED', 1, 1, 'LOC_GOODY_NULL_DESCRIPTION'),
    ('GOODYHUT_MILITARY', 'GOODYHUT_GRANT_ANTI_CAVALRY', 15, 'GOODY_MILITARY_GRANT_ANTI_CAVALRY', 1, 1, 'LOC_GOODY_NULL_DESCRIPTION'),
    ('GOODYHUT_MILITARY', 'GOODYHUT_GRANT_HEAVY_CAVALRY', 15, 'GOODY_MILITARY_GRANT_HEAVY_CAVALRY', 1, 1, 'LOC_GOODY_GRANT_HEAVY_CAVALRY_UNIT_DESCRIPTION'),
    ('GOODYHUT_MILITARY', 'GOODYHUT_GRANT_LIGHT_CAVALRY', 15, 'GOODY_MILITARY_GRANT_LIGHT_CAVALRY', 1, 1, 'LOC_GOODY_GRANT_LIGHT_CAVALRY_UNIT_DESCRIPTION'),
    ('GOODYHUT_MILITARY', 'GOODYHUT_GRANT_SIEGE', 25, 'GOODY_MILITARY_GRANT_SIEGE', 1, 1, 'LOC_GOODY_GRANT_SIEGE_UNIT_DESCRIPTION');

UPDATE Units SET PrereqTech = NULL WHERE UnitType = 'UNIT_HORSEMAN';
UPDATE Units SET PrereqTech = NULL WHERE UnitType = 'UNIT_HEAVY_CHARIOT';
UPDATE Units SET PrereqTech = NULL WHERE UnitType = 'UNIT_CATAPULT';
UPDATE Units SET PrereqTech = NULL WHERE UnitType = 'UNIT_SPEARMAN';




