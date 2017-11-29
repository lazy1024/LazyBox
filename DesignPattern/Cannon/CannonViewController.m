//
//  CannonViewController.m
//  DesignPattern
//
//  Created by 李永亮 on 2017/3/15.
//  Copyright © 2017年 李永亮. All rights reserved.
//

#import "CannonViewController.h"
#import "Cannon.h"


@interface CannonViewController ()


@end

@implementation CannonViewController

Cannon *cannon;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    cannon = [[Cannon alloc] init];
    
    /*
    [self.TipsBtn setImage:[UIImage imageNamed:@"cannon.png"] forState:UIControlStateNormal];
    */
    
    [self Update];
}

- (void)Update{
    BYTE i = 0;
    BYTE j = 0;
    const UIButton *AllBtn[GameRow][GameLine] =
    {
        {_Btn1,  _Btn2,  _Btn3,  _Btn4,  _Btn5},
        {_Btn6,  _Btn7,  _Btn8,  _Btn9,  _Btn10},
        {_Btn11, _Btn12, _Btn13, _Btn14, _Btn15},
        {_Btn16, _Btn17, _Btn18, _Btn19, _Btn20},
        {_Btn21, _Btn22, _Btn23, _Btn24, _Btn25},
    };
    
    for(i=0; i<GameRow; i++)
    {
        for(j=0; j<GameLine; j++)
        {
            if(cannon->Game[i][j] == FootmanValue)
                [AllBtn[i][j] setImage:[UIImage imageNamed:@"footman.png"] forState:UIControlStateNormal];
            else if(cannon->Game[i][j] == CannonValue)
                [AllBtn[i][j] setImage:[UIImage imageNamed:@"cannon.png"] forState:UIControlStateNormal];
            else
                [AllBtn[i][j] setImage:[UIImage imageNamed:@"nobody.png"] forState:UIControlStateNormal];
                
        }
    }
    
    // ---
    if([cannon getGameTurn] == Turn_Cannon)
        [self.TipsBtn setImage:[UIImage imageNamed:@"cannon.png"] forState:UIControlStateNormal];
    else
        [self.TipsBtn setImage:[UIImage imageNamed:@"footman.png"] forState:UIControlStateNormal];
    
    // ---
    if([cannon IsGameOver])
    {
        if([cannon IsCannonGameOver])
            NSLog(@"Game Over:Footman Win");
        else
            NSLog(@"Game Over:Cannon Win");
            
    }
}

- (IBAction)Test1:(id)sender {
}

- (IBAction)Test2:(id)sender {

}

- (void)gameOverCheck
{
    
}

- (IBAction)button1:(id)sender {
    [cannon GameTouchRow:0 Line:0];
    [self Update];
}

- (IBAction)button2:(id)sender{
    [cannon GameTouchRow:0 Line:1];
    [self Update];
}

- (IBAction)button3:(id)sender{
    [cannon GameTouchRow:0 Line:2];
    [self Update];
}

- (IBAction)button4:(id)sender{
    [cannon GameTouchRow:0 Line:3];
    [self Update];
}

- (IBAction)button5:(id)sender{
    [cannon GameTouchRow:0 Line:4];
    [self Update];
}

- (IBAction)button6:(id)sender{
    [cannon GameTouchRow:1 Line:0];
    [self Update];
}

- (IBAction)button7:(id)sender{
    [cannon GameTouchRow:1 Line:1];
    [self Update];
}

- (IBAction)button8:(id)sender{
    [cannon GameTouchRow:1 Line:2];
    [self Update];
}

- (IBAction)button9:(id)sender{
    [cannon GameTouchRow:1 Line:3];
    [self Update];
}

- (IBAction)button10:(id)sender{
    [cannon GameTouchRow:1 Line:4];
    [self Update];
}

- (IBAction)button11:(id)sender{
    [cannon GameTouchRow:2 Line:0];
    [self Update];
}

- (IBAction)button12:(id)sender{
    [cannon GameTouchRow:2 Line:1];
    [self Update];
}

- (IBAction)button13:(id)sender{
    [cannon GameTouchRow:2 Line:2];
    [self Update];
}

- (IBAction)button14:(id)sender{
    [cannon GameTouchRow:2 Line:3];
    [self Update];
}

- (IBAction)button15:(id)sender{
    [cannon GameTouchRow:2 Line:4];
    [self Update];
}

- (IBAction)button16:(id)sender{
    [cannon GameTouchRow:3 Line:0];
    [self Update];
}

- (IBAction)button17:(id)sender{
    [cannon GameTouchRow:3 Line:1];
    [self Update];
}

- (IBAction)button18:(id)sender{
    [cannon GameTouchRow:3 Line:2];
    [self Update];
}

- (IBAction)button19:(id)sender{
    [cannon GameTouchRow:3 Line:3];
    [self Update];
}

- (IBAction)button20:(id)sender{
    [cannon GameTouchRow:3 Line:4];
    [self Update];
}

- (IBAction)button21:(id)sender{
    [cannon GameTouchRow:4 Line:0];
    [self Update];
}

- (IBAction)button22:(id)sender{
    [cannon GameTouchRow:4 Line:1];
    [self Update];
}

- (IBAction)button23:(id)sender{
    [cannon GameTouchRow:4 Line:2];
    [self Update];
}

- (IBAction)button24:(id)sender{
    [cannon GameTouchRow:4 Line:3];
    [self Update];
}

- (IBAction)button25:(id)sender{
    [cannon GameTouchRow:4 Line:4];
    [self Update];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
