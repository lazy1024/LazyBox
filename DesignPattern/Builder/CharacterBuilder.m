//
//  CharacterBuilder.m
//  DesignPattern
//
//  Created by 李永亮 on 16/4/12.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import "CharacterBuilder.h"

@implementation CharacterBuilder

@synthesize character = _character;

-(CharacterBuilder *) buildNewCharacter
{
    _character = [[Character alloc] init];
    return self;
}

-(CharacterBuilder *) buildStrength:(float) value
{
    _character.strength = value;
    return self;
}

-(CharacterBuilder *) buildStamina:(float) value
{
    _character.stamina = value;
    return self;
}

-(CharacterBuilder *) buildIntelligence:(float) value
{
    _character.intelligence = value;
    return self;
}

-(CharacterBuilder *) buildAgility:(float) value
{
    _character.agility = value;
    return self;
}

-(CharacterBuilder *) buildAggressiveness:(float) value
{
    _character.aggressiveness = value;
    return self;
}

@end
