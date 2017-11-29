//
//  Stroke.m
//  DesignPattern
//
//  Created by 李永亮 on 16/4/6.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import "Stroke.h"

@implementation Stroke

@synthesize color = _color;
@synthesize size = _size;

@dynamic location;

#pragma  mark -
#pragma  mark <Mark>

-(id)init
{
    if(self = [super init])
    {
        _children = [[NSMutableArray alloc] initWithCapacity:5];
    }
    return self;
}

-(void) setLocation:(CGPoint)alocation
{
    
}

-(CGPoint) location
{
    if([_children count] > 0)
    {
        #pragma -
        #pragma mark ???
        //return [[_children objectAtIndex:0] location];
        
        return [(id<Mark>)[_children objectAtIndex:0] location];
    }
    return CGPointZero;
}

#pragma  mark -
#pragma  mark <Mark>

-(void) addMark:(id<Mark>)mark
{
    [_children addObject:mark];
}

-(void) removeMark:(id<Mark>)mark
{
    if([_children containsObject:mark])
    {
        [_children removeObject:mark];
    }
    else
    {
        // TODO:
        [_children makeObjectsPerformSelector:@selector(removeMark:)
                                   withObject:mark];
    }
}

-(id<Mark>) childMarkAtIndex:(NSInteger)index
{
    if(index >= [_children count])
        return nil;
    return [_children objectAtIndex:index];
}

-(id<Mark>) lastChild
{
    return [_children lastObject];
}

-(id) copyWithZone:(NSZone *)zone
{
    Stroke *strokeCopy = [[[self class] allocWithZone:zone] init];
    
    [strokeCopy setColor:[UIColor colorWithCGColor:[_color CGColor]]];
    
    [strokeCopy setSize:_size];
    
    for(id<Mark> child in _children)
    {
        id<Mark> childCopy = [child copy];
        [strokeCopy addMark:childCopy];
    }
    
    return strokeCopy;
}

-(NSUInteger) count
{
    return [_children count];
}

@end
