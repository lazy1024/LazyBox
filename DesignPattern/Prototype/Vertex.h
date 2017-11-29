//
//  Vertex.h
//  DesignPattern
//
//  Created by 李永亮 on 16/4/5.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Mark.h"

@interface Vertex : NSObject <Mark, NSCopying>
{
    @protected
    CGPoint _location;
}

#pragma  mark -
#pragma  mark <Mark>

@property (nonatomic, retain) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, readonly) NSUInteger count;
@property (nonatomic, readonly) id<Mark> lastChild;

-(id) copyWithZone:(NSZone *)zone;
-(void) addMark:(id<Mark>)mark;
-(void) removeMark:(id<Mark>)mark;
-(id<Mark>) childMarkAtIndex:(NSInteger)index;


#pragma  mark -
#pragma  mark

-(id) initWithLocation:(CGPoint) alocation;

@end
