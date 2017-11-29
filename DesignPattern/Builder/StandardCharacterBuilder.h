//
//  StandardCharacterBuilder.h
//  DesignPattern
//
//  Created by 李永亮 on 16/4/12.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CharacterBuilder.h"

@interface StandardCharacterBuilder : CharacterBuilder
{}


-(CharacterBuilder *) buildStrength:(float) value;
-(CharacterBuilder *) buildStamina:(float) value;
-(CharacterBuilder *) buildIntelligence:(float) value;
-(CharacterBuilder *) buildAgility:(float) value;
-(CharacterBuilder *) buildAggressiveness:(float) value;

@end
