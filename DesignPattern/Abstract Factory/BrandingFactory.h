//
//  BrandingFactory.h
//  DesignPattern
//
//  Created by 李永亮 on 16/4/10.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define USE_ACME
//#define USE_SIERRA

@interface BrandingFactory : NSObject

+(BrandingFactory *) factory;

-(UIView *) brandedView;
-(UIButton *) brandedMainButton;
-(UIToolbar *) brandedToolBar;

@end
