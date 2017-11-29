//
//  ChasingGame.h
//  DesignPattern
//
//  Created by 李永亮 on 16/4/12.
//  Copyright © 2016年 李永亮. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "StandardCharacterBuilder.h"

@interface ChasingGame : NSObject
{}

-(Character *) createPlayer:(CharacterBuilder *) builder;
-(Character *) createEnemy:(CharacterBuilder *) builder;

@end
