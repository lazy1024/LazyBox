//
//  Stroke.h
//  DesignPattern
//
//  Created by 李永亮 on 16/4/6.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Mark.h"

@interface Stroke : NSObject <Mark, NSCopying>
{
    @private
    UIColor *_color;
    CGFloat _size;
    NSMutableArray *_children;
}

#pragma  mark -
#pragma  mark <Mark>

@property (nonatomic, retain)UIColor *color;
@property (nonatomic, assign)CGFloat size;
@property (nonatomic, assign)CGPoint location;
@property (nonatomic, readonly)NSUInteger count;
@property (nonatomic, readonly)id<Mark> lastChild;

-(void) addMark:(id<Mark>)mark;
-(void) removeMark:(id<Mark>)mark;
-(id<Mark>) childMarkAtIndex:(NSInteger)index;
-(id) copyWithZone:(NSZone *)zone;

@end
