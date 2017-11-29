//
//  Cannon.h
//  DesignPattern
//
//  Created by 李永亮 on 2017/3/15.
//  Copyright © 2017年 李永亮. All rights reserved.
//

#ifndef Cannon_h
#define Cannon_h

#define GameRow   5
#define GameLine  5

#define GameTotal 25


#define NobodyValue       0
#define CannonValue     2
#define FootmanValue    1

#define FootmanMaxNum       15
#define CannonMaxNum        3

typedef enum
{
    Turn_Cannon,
    Turn_Footman,
}GameTurnType;

typedef enum
{
    CannonState_Select,
    CannonState_Move,
}CannonStateType;

typedef enum
{
    FootmanState_Select,
    FootmanState_Move,
}FootmanStateType;

typedef struct
{
    BYTE row;
    BYTE line;
}SelectChessType;

@interface Cannon : NSObject
{
    @public
    BYTE Game[GameRow][GameLine];
}

- (void)GameInit;
- (void)GameTouchRow:(BYTE)row Line:(BYTE)line;
- (GameTurnType)getGameTurn;
- (BOOL)IsGameOver;
- (BOOL)IsFootmanGameOver;
- (BOOL)IsCannonGameOver;

@end



#endif /* Cannon_h */
