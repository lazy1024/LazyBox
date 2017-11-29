//
//  LZPerson.h
//  DesignPattern
//
//  Created by 李永亮 on 16/4/7.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LZPerson : NSObject
{
    @private
    NSMutableArray *_friendArray;
}

@property (nonatomic, readonly) NSString *firstName;
@property (nonatomic, readonly) NSString *lastName;

-(id) initWithFristName:(NSString *)firstName lastName:(NSString *)lastName;
-(void) addFriend:(LZPerson *)person;
-(void) removeFriend:(LZPerson *)person;

@end
