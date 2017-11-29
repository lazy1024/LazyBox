//
//  Dot.m
//  DesignPattern
//
//  Created by 李永亮 on 16/4/5.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import "Dot.h"

@implementation Dot


#pragma  mark -
#pragma  mark self

@synthesize color = _color;
@synthesize size = _size;

-(id) copyWithZone:(NSZone *)zone
{
    Dot *dotCopy = [[[self class] allocWithZone:zone] initWithLocation: _location];
    
    [dotCopy setColor:[UIColor colorWithCGColor:[_color CGColor]]];
    [dotCopy setSize:_size];
    
    return dotCopy;
}

@end
