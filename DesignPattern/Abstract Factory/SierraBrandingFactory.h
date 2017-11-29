//
//  SierraBrandingFactory.h
//  DesignPattern
//
//  Created by 李永亮 on 16/4/10.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BrandingFactory.h"

@interface SierraBrandingFactory : BrandingFactory
{}

-(UIView *) brandedView;
-(UIButton *) brandedMainButton;
-(UIToolbar *) brandedToolBar;

@end
