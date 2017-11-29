//
//  PaperCanvasViewGenerator.h
//  DesignPattern
//
//  Created by 李永亮 on 16/4/9.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PaperCanvasView.h"
#import "CanvasViewGenerator.h"

@interface PaperCanvasViewGenerator : CanvasViewGenerator

-(CanvasView *) canvasViewWithFrame:(CGRect)aFrame;

@end
