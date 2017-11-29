//
//  BrandingFactory.m
//  DesignPattern
//
//  Created by 李永亮 on 16/4/10.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import "BrandingFactory.h"

#import "AcmeBrandingFactory.h"
#import "SierraBrandingFactory.h"

@implementation BrandingFactory

+(BrandingFactory *) factory
{
#if defined(USE_ACME)
    return [[AcmeBrandingFactory alloc] init];
#elif defined(USE_SIERRA)
    return [[SierraBrandingFactory alloc] init];
#else
    return nil;
#endif
}

-(UIView *) brandedView
{
    return nil;
}

-(UIButton *) brandedMainButton
{
    return nil;
}

-(UIToolbar *) brandedToolBar
{
    return nil;
}

@end
