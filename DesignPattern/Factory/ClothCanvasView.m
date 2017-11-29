//
//  ClothCanvasView.m
//  DesignPattern
//
//  Created by 李永亮 on 16/4/9.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import "ClothCanvasView.h"

@implementation ClothCanvasView

-(id) initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        UIImage *image = [UIImage imageNamed:@"cloth"];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        [self addSubview:imageView];
    }
    return self;
}

@end
