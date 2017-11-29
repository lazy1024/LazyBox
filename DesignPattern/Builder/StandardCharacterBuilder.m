//
//  StandardCharacterBuilder.m
//  DesignPattern
//
//  Created by 李永亮 on 16/4/12.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import "StandardCharacterBuilder.h"

@implementation StandardCharacterBuilder

-(CharacterBuilder *) buildStrength:(float) value
{
    _character.protection   *= value;
    _character.power        *= value;
    
    return [super buildStrength:value];
}

-(CharacterBuilder *) buildStamina:(float) value
{
    _character.protection   *= value;
    _character.power        *= value;
    
    return [super buildStamina:value];
}

-(CharacterBuilder *) buildIntelligence:(float) value
{
    _character.protection   *= value;
    _character.power        /= value;
    
    return [super buildIntelligence:value];
}

-(CharacterBuilder *) buildAgility:(float) value
{
    _character.protection   *= value;
    _character.power        /= value;
    
    return [super buildAgility:value];
}

-(CharacterBuilder *) buildAggressiveness:(float) value
{
    _character.protection   *= value;
    _character.power        /= value;
    
    return [super buildAggressiveness:value];
}

@end
