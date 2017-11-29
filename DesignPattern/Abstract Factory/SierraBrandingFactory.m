//
//  SierraBrandingFactory.m
//  DesignPattern
//
//  Created by 李永亮 on 16/4/10.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import "SierraBrandingFactory.h"

//#import "SierraView.h"
//#import "SierraMainButton.h"
//#import "SierraToolBar.h"

@implementation SierraBrandingFactory


-(UIView *) brandedView
{
    //    return [[SierraView alloc] init];
    NSLog(@"Sierra View");
    return nil;
}

-(UIButton *) brandedMainButton
{
    //    return [[SierraMainButton alloc] init];
    NSLog(@"Sierra MainButton");
    return nil;
}

-(UIToolbar *) brandedToolBar
{
    //    return [[SierraToolBar alloc] init];
    NSLog(@"Sierra ToolBar");
    return nil;
}


@end
