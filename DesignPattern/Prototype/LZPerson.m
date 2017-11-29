//
//  LZPerson.m
//  DesignPattern
//
//  Created by 李永亮 on 16/4/7.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import "LZPerson.h"

@implementation LZPerson

-(id) initWithFristName:(NSString *)firstName lastName:(NSString *)lastName
{
    if(self = [super init])
    {
        _firstName = firstName;
        _lastName = lastName;
        _friendArray = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void) addFriend:(LZPerson *)person
{
    [_friendArray addObject:person];
}

-(void) removeFriend:(LZPerson *)person;
{
    [_friendArray removeObject:person];
}

-(id) copyWithZone:(NSZone *)zone
{
    LZPerson *person = [[[self class] allocWithZone:zone] initWithFristName:_firstName lastName:_lastName];
    return person;
}

@end
