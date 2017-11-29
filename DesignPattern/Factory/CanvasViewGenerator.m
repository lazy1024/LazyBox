//
//  CanvasViewGenerator.m
//  DesignPattern
//
//  Created by 李永亮 on 16/4/9.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import "CanvasViewGenerator.h"

@implementation CanvasViewGenerator

-(CanvasView *) canvasViewWithFrame:(CGRect)aFrame
{
    return [[CanvasView alloc] initWithFrame:aFrame];
}

@end
