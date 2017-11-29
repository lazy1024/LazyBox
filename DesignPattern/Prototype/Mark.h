//
//  Mark.h
//  DesignPattern
//
//  Created by 李永亮 on 16/3/15.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#ifndef Mark_h
#define Mark_h

#import <UIKit/UIKit.h>

@protocol Mark <NSObject>

@property (nonatomic, retain) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, readonly) NSUInteger count;
@property (nonatomic, readonly) id<Mark> lastChild;

-(id) copy;
-(void) addMark:(id<Mark>)mark;
-(void) removeMark:(id<Mark>)mark;
-(id<Mark>) childMarkAtIndex:(NSInteger)index;


@end


#endif /* Mark_h */
