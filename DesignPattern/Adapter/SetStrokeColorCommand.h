//
//  SetStrokeColorCommand.h
//  DesignPattern
//
//  Created by 李永亮 on 16/4/18.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Command.h"

@class SetStrokeColorCommand;

@protocol SetStrokeColorCommandDelegate

-(void) command:(SetStrokeColorCommand *)command
                didRequestColorComponentsForRed:(CGFloat *)red
                                            green:(CGFloat *)green
                                            blue:(CGFloat *)blue;
-(void) command:(SetStrokeColorCommand *)command
        didFinishColorUpdateWithColor:(UIColor *)color;

@end


@interface SetStrokeColorCommand : Command
{
    @private
    id<SetStrokeColorCommandDelegate> delegate;
    
    int a;
}

@property (nonatomic, assign) id<SetStrokeColorCommandDelegate> delegate;

@property (nonatomic, assign) int b;

-(void) execute;

@end
