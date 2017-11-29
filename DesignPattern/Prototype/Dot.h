//
//  Dot.h
//  DesignPattern
//
//  Created by 李永亮 on 16/4/5.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Vertex.h"

@interface Dot : Vertex
{
    @private
    UIColor *_color;
    CGFloat _size;
}

@property (nonatomic, retain) UIColor *color;
@property (nonatomic, assign) CGFloat size;

-(id) copyWithZone:(NSZone *)zone;

@end
