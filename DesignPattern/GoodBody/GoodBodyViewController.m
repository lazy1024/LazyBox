//
//  GoodBodyViewController.m
//  DesignPattern
//
//  Created by 李永亮 on 2017/3/8.
//  Copyright © 2017年 李永亮. All rights reserved.
//

#import "GoodBodyViewController.h"

#import <AudioToolbox/AudioToolbox.h>

@interface GoodBodyViewController ()
@property (weak, nonatomic) IBOutlet UIButton *MainBtn;
@property (weak, nonatomic) IBOutlet UISwitch *switch30s;


@property (nonatomic, strong) NSTimer *timer30s;

@end

@implementation GoodBodyViewController

- (void) tipsAction
{
    NSLog(@"dingling");
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
    AudioServicesPlaySystemSound(1009);     // 1005
}

- (void)start30sTimer
{
    self.timer30s =
    [NSTimer scheduledTimerWithTimeInterval:2.0
                                     target:self
                                   selector:@selector(tipsAction)  userInfo:nil
                                    repeats:YES];
    
   
    // 定义一个NSTimer
    /*
    self.paintingTimer = [NSTimer scheduledTimerWithTimeInterval:1.0
                                                          target:self
                                                        selector:@selector(paint:)  userInfo:nil
                                                         repeats:YES];
     */
}

- (void)stop30sTimer
{
    if (self.timer30s != nil){
        
        [self.timer30s invalidate];
    }
}

- (IBAction)switch30sTimer:(id)sender {
    if(_switch30s.on)
    {
        NSLog(@"switch30 on");
        //[self start30sTimer];
        UILocalNotification *notification = [[UILocalNotification alloc] init];
        if (notification) {
            // 设置通知的提醒时间
            NSDate *currentDate   = [NSDate date];
            notification.timeZone = [NSTimeZone defaultTimeZone]; // 使用本地时区
            notification.fireDate = currentDate;
            
            // 设置重复间隔
            notification.repeatInterval = kCFCalendarUnitMinute;
            
            // 设置提醒的文字内容
            notification.alertBody   = @"Wake up, man";
            notification.alertAction = NSLocalizedString(@"起床了", nil);
            
            // 通知提示音 使用默认的
            notification.soundName= UILocalNotificationDefaultSoundName;
            
            // 设置应用程序右上角的提醒个数
            notification.applicationIconBadgeNumber++;
            
            // 设定通知的userInfo，用来标识该通知
            /*
            NSMutableDictionary *aUserInfo = [[NSMutableDictionary alloc] init];
            aUserInfo[kLocalNotificationID] = @"LocalNotificationID";
            notification.userInfo = aUserInfo;
             */
            
            
            // 将通知添加到系统中
            [[UIApplication sharedApplication] scheduleLocalNotification:notification];
        }
    }
    else
    {
        [self stop30sTimer];
        //NSLog(@"switch30 off");
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    // Do any additional setup after loading the view.
    
   // self.MainBtn.layer.cornerRadius = self.MainBtn.frame.size.width / 2.0;
    //self.MainBtn.clipsToBounds = TRUE;
    
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
