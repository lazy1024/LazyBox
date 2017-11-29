//
//  Vertex.m
//  DesignPattern
//
//  Created by 李永亮 on 16/4/5.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex

@synthesize location = _location;
@dynamic color, size;


#pragma  mark --
#pragma  mark <Mark>

-(id) copyWithZone:(NSZone *)zone
{
    Vertex *vertexCopy = [[[self class] allocWithZone:zone] initWithLocation:_location];
    return vertexCopy;
}

-(void) addMark:(id<Mark>)mark
{}

-(void) removeMark:(id<Mark>)mark
{}

-(id<Mark>) childMarkAtIndex:(NSInteger)index
{
    return nil;
}


#pragma  mark -
#pragma  mark

-(id) initWithLocation:(CGPoint) alocation
{
    if(self = [super init])
        [self setLocation:alocation];
    
    return self;
}


#pragma  mark -
#pragma  mark
-(void) setColor:(UIColor *)color
{}

-(UIColor *)color
{
    return nil;
}

-(void) setSize:(CGFloat)size
{}

-(CGFloat) size
{
    return 0;
}

-(id<Mark>) lastChild
{
    return nil;
}

-(NSUInteger) count
{
    return 0;
}

#pragma  mark -
#pragma  mark ??
-(NSEnumerator *) enumerator
{
    return nil;
}

@end

