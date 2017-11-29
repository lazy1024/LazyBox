//
//  Character.m
//  DesignPattern
//
//  Created by 李永亮 on 16/4/12.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import "Character.h"

@implementation Character

@synthesize   protection        = _protection;
@synthesize   power             = _power;
@synthesize   strength          = _strength;
@synthesize   stamina           = _stamina;
@synthesize   intelligence      = _intelligence;
@synthesize   agility           = _agility;
@synthesize   aggressiveness    = _aggressiveness;

-(id) init
{
    if(self = [super init])
    {
        _protection     = 1.0;
        _power          = 1.0;
        _strength       = 1.0;
        _stamina        = 1.0;
        _intelligence   = 1.0;
        _agility        = 1.0;
        _aggressiveness = 1.0;
    }
    return self;
}

@end
