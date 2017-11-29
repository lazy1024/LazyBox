//
//  CanvasView.h
//  DesignPattern
//
//  Created by 李永亮 on 16/3/16.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CanvasView : NSObject

- (id)initWithFrame:(CGRect)frame;
- (id)addSubview:(UIView *)view;

@end
