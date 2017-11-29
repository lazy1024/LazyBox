//
//  PaperCanvasViewGenerator.m
//  DesignPattern
//
//  Created by 李永亮 on 16/4/9.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import "PaperCanvasViewGenerator.h"

@implementation PaperCanvasViewGenerator

-(CanvasView *) canvasViewWithFrame:(CGRect)aFrame
{
    NSLog(@"Paper CanvasView Init");
    return [[PaperCanvasView alloc] initWithFrame:aFrame];
}

@end
