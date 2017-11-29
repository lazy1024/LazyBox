//
//  Singleton.m
//  DesignPattern
//
//  Created by 李永亮 on 16/4/13.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

static Singleton * sharedSingleton = nil;

+(Singleton *) sharedInstance
{
    if(sharedSingleton == nil)
    {
//        sharedSingleton = [[Singleton alloc] init];
        sharedSingleton = [[super allocWithZone:NULL] init];
    }
    return sharedSingleton;
}

+(id) allocWithZone:(NSZone *)zone
{
    return [self sharedInstance];
}

-(id) copyWithZone:(NSZone *)zone
{
    return self;
}

@end
