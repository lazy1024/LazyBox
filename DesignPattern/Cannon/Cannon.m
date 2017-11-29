//
//  Cannon.m
//  DesignPattern
//
//  Created by 李永亮 on 2017/3/15.
//  Copyright © 2017年 李永亮. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Cannon.h"

GameTurnType gameTurn = Turn_Cannon;
CannonStateType cannonState = CannonState_Select;
FootmanStateType footmanState = FootmanState_Select;
SelectChessType selectChess = {0, 0};

@implementation Cannon : NSObject

- (id)init
{
    self = [super init];
    if(self)
    {
        BYTE row = 0;
        BYTE line = 0;
        
        // Space ---
        for(row=0; row<GameRow; row++)
        {
            for(line=0; line<GameLine; line++)
                Game[row][line] = NobodyValue;
        }
        
        [self GameInit];
    }
    
    return self;
}

- (void)GameInit
{
    BYTE row = 0;
    BYTE line = 0;
    
    NSLog(@"Game Init");
    
    // Nobody ---
    for(row=0; row<GameRow; row++)
    {
        for(line=0; line<GameLine; line++)
            Game[row][line] = NobodyValue;
    }
    
    // FootMan ---
    for(row=0; row<3; row++)
    {
        for(line=0; line<GameLine; line++)
            Game[row][line] = FootmanValue;
    }
    
    // Cannon ---
    Game[GameRow-1][0] = CannonValue;
    Game[GameRow-1][1] = CannonValue;
    Game[GameRow-1][2] = CannonValue;
    
    // ---
    gameTurn = Turn_Cannon;
    cannonState = CannonState_Select;
    footmanState = FootmanState_Select;
    selectChess.row = 0;
    selectChess.line = 0;
}

- (BOOL)isCannonEatValidRow:(BYTE)cannonRow Line:(BYTE)cannonLine FootmanRow:(BYTE)footmanRow FootmanLine:(BYTE)footmanLine
{
    if((Game[cannonRow][cannonLine] != CannonValue) ||
        (Game[footmanRow][footmanLine] != FootmanValue))
        return FALSE;
    
    if(cannonRow == footmanRow)
    {
        if(cannonLine == (footmanLine + 2))
        {
            if(Game[cannonRow][footmanLine + 1] == NobodyValue)
                return TRUE;
            else
                return FALSE;
        }
        else if((cannonLine + 2) == footmanLine)
        {
            if(Game[cannonRow][cannonLine + 1] == NobodyValue)
                return TRUE;
            else
                return FALSE;
        }
        else
            return FALSE;
    }
    else if(cannonLine == footmanLine)
    {
        if(cannonRow == (footmanRow + 2))
        {
            if(Game[footmanRow + 1][footmanLine] == NobodyValue)
                return TRUE;
            else
                return FALSE;
        }
        else if((cannonRow + 2) == footmanRow)
        {
            if(Game[cannonRow + 1][cannonLine] == NobodyValue)
                return TRUE;
            else
                return FALSE;
        }
        else
            return FALSE;
    }
    else
        return FALSE;
}

- (BOOL)isCannonMoveValidRow:(BYTE)cannonRow Line:(BYTE)cannonLine NobodyRow:(BYTE)nobodyRow NobodyLine:(BYTE)nobodyLine
{
    if((Game[cannonRow][cannonLine] != CannonValue) ||
       (Game[nobodyRow][nobodyLine] != NobodyValue))
        return FALSE;
    
    if(cannonRow == nobodyRow)
    {
        if((cannonLine == (nobodyLine + 1)) ||
           ((cannonLine + 1) == nobodyLine))
            return TRUE;
        else
            return FALSE;
    }
    else if(cannonLine == nobodyLine)
    {
        if((cannonRow == (nobodyRow + 1)) ||
           ((cannonRow + 1) == nobodyRow))
            return TRUE;
        else
            return FALSE;
    }
    else
        return FALSE;
}

- (BOOL)isFootmanMoveValidRow:(BYTE)footmanRow Line:(BYTE)footmanLine NobodyRow:(BYTE)nobodyRow NobodyLine:(BYTE)nobodyLine
{
    if((Game[footmanRow][footmanLine] != FootmanValue) ||
       (Game[nobodyRow][nobodyLine] != NobodyValue))
        return FALSE;
    
    if(footmanRow == nobodyRow)
    {
        if((footmanLine == (nobodyLine + 1)) ||
           ((footmanLine + 1) == nobodyLine))
            return TRUE;
        else
            return FALSE;
    }
    else if(footmanLine == nobodyLine)
    {
        if((footmanRow == (nobodyRow + 1)) ||
           ((footmanRow + 1) == nobodyRow))
            return TRUE;
        else
            return FALSE;
    }
    else
        return FALSE;
}

- (void)GameTouchRow:(BYTE)row Line:(BYTE)line
{
    if(gameTurn == Turn_Cannon)
    {
        switch(cannonState)
        {
            case CannonState_Select:
            {
                if(Game[row][line] == CannonValue)
                {
                    selectChess.row = row;
                    selectChess.line = line;
                    
                    cannonState = CannonState_Move;
                }
            }
            break;
            case CannonState_Move:
            {
                if(Game[row][line] == CannonValue)
                {
                    selectChess.row = row;
                    selectChess.line = line;
                    
                    cannonState = CannonState_Move;
                }
                else if(Game[row][line] == FootmanValue)
                {
                    if([self isCannonEatValidRow:selectChess.row
                                            Line:selectChess.line
                                      FootmanRow:row
                                     FootmanLine:line])
                    {
                        Game[selectChess.row][selectChess.line] = NobodyValue;
                        Game[row][line] = CannonValue;
                        
                        gameTurn = Turn_Footman;
                    }
                }
                else    // Nobody
                {
                    if([self isCannonMoveValidRow:selectChess.row
                                            Line:selectChess.line
                                      NobodyRow:row
                                     NobodyLine:line])
                    {
                        Game[selectChess.row][selectChess.line] = NobodyValue;
                        Game[row][line] = CannonValue;
                        
                        gameTurn = Turn_Footman;
                    }
                }
            }
            break;
            default:
            break;
        }
    }
    else
    {
        switch(footmanState)
        {
            case FootmanState_Select:
            {
                if(Game[row][line] == FootmanValue)
                {
                    selectChess.row = row;
                    selectChess.line = line;
                    
                    footmanState = FootmanState_Move;
                }
            }
            break;
            case FootmanState_Move:
            {
                if(Game[row][line] == FootmanValue)
                {
                    selectChess.row = row;
                    selectChess.line = line;
                    
                    footmanState = FootmanState_Move;
                }
                else if(Game[row][line] == NobodyValue)
                {
                    if([self isFootmanMoveValidRow:selectChess.row
                                             Line:selectChess.line
                                        NobodyRow:row
                                       NobodyLine:line])
                    {
                        Game[selectChess.row][selectChess.line] = NobodyValue;
                        Game[row][line] = FootmanValue;
                        
                        gameTurn = Turn_Cannon;
                    }
                }
            }
            break;
            default:
            break;
        }
    }
}

- (GameTurnType)getGameTurn
{
    return gameTurn;
}

- (BOOL)IsCannonGameOver
{
    BYTE i = 0;
    BYTE j = 0;
    BYTE k = 0;
    
    BOOL res = TRUE;
    
    SelectChessType cannon[CannonMaxNum] = {0};
    
    for(i=0; i<GameRow; i++)
    {
        for(j=0; j<GameLine; j++)
        {
            if(Game[i][j] == CannonValue)
            {
                cannon[k].row = i;
                cannon[k].line = j;
                
                k++;
            }
        }
    }
    
    for(i=0; i<CannonMaxNum; i++)
    {
        // up
        if(cannon[i].row != 0)
        {
            if(Game[cannon[i].row - 1][cannon[i].line] == NobodyValue)
            {
                res = FALSE;
                break;
            }
        }
        
        // down
        if(cannon[i].row != (GameRow - 1))
        {
            if(Game[cannon[i].row + 1][cannon[i].line] == NobodyValue)
            {
                res = FALSE;
                break;
            }
        }
        
        // left
        if(cannon[i].line != 0)
        {
            if(Game[cannon[i].row][cannon[i].line - 1] == NobodyValue)
            {
                res = FALSE;
                break;
            }
        }
        
        // right
        if(cannon[i].line != (GameLine-1))
        {
            if(Game[cannon[i].row][cannon[i].line + 1] == NobodyValue)
            {
                res = FALSE;
                break;
            }
        }
        
    }
    
    return res;
}

- (BOOL)IsFootmanGameOver
{
    BYTE i = 0;
    BYTE j = 0;
    BYTE footmanNum = 0;
    
    for(i=0; i<GameRow; i++)
    {
        for(j=0; j<GameLine; j++)
        {
            if(Game[i][j] == FootmanValue)
                footmanNum++;
        }
    }
    
    if(footmanNum < 4)
        return TRUE;
    else
        return FALSE;
}

- (BOOL)IsGameOver
{
    BOOL res = FALSE;
    
    if(gameTurn == Turn_Cannon)
        res = [self IsCannonGameOver];
    else
        res = [self IsFootmanGameOver];
    
    return res;
}

@end
