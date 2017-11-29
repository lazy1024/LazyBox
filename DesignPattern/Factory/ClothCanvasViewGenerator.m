//
//  ClothCanvasViewGenerator.m
//  DesignPattern
//
//  Created by 李永亮 on 16/4/9.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import "ClothCanvasViewGenerator.h"

#import "ClothCanvasView.h"

@implementation ClothCanvasViewGenerator

-(CanvasView *) canvasViewWithFrame:(CGRect)aFrame
{
    NSLog(@"Cloth CanvasView Init");
    return [[ClothCanvasView alloc] initWithFrame:aFrame];
}

@end
