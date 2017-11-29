//
//  AcmeBrandingFactory.m
//  DesignPattern
//
//  Created by 李永亮 on 16/4/10.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import "AcmeBrandingFactory.h"

//#import "AcmeView.h"
//#import "AcmeMainButton.h"
//#import "AcmeToolBar.h"


@implementation AcmeBrandingFactory

-(UIView *) brandedView
{
//    return [[AcmeView alloc] init];
    NSLog(@"Acme brandedView");
    return nil;
}

-(UIButton *) brandedMainButton
{
    //    return [[AcmeMainButton alloc] init];
    NSLog(@"Acme MainButton");
    return nil;
}

-(UIToolbar *) brandedToolBar
{
    //    return [[AcmeToolBar alloc] init];
    NSLog(@"Acme ToolBar");
    return nil;
}

@end
