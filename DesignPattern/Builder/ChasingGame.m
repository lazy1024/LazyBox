//
//  ChasingGame.m
//  DesignPattern
//
//  Created by 李永亮 on 16/4/12.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import "ChasingGame.h"

@implementation ChasingGame

-(Character *) createPlayer:(CharacterBuilder *) builder
{
    [builder buildNewCharacter];
    [builder buildStrength:100.0];
    [builder buildStamina:100.0];
    [builder buildIntelligence:100.0];
    [builder buildAgility:100.0];
    [builder buildAggressiveness:100.0];
    return [builder character];
}

-(Character *) createEnemy:(CharacterBuilder *) builder
{
    [builder buildNewCharacter];
    [builder buildStrength:60.0];
    [builder buildStamina:60.0];
    [builder buildIntelligence:60.0];
    [builder buildAgility:60.0];
    [builder buildAggressiveness:60.0];
    return [builder character];
}

@end
