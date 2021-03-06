//
//  GoodBodyViewController.m
//  DesignPattern
//
//  Created by 李永亮 on 2017/3/8.
//  Copyright © 2017年 李永亮. All rights reserved.
//

#import "GoodBodyViewController.h"

#import <AudioToolbox/AudioToolbox.h>

#define notificationtag 1024

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

- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification
{
    // 在这里对通知消息做处理
}

- (IBAction)switch30sTimer:(id)sender {
    if(_switch30s.on)
    {
        UIUserNotificationType types = UIUserNotificationTypeBadge | UIUserNotificationTypeSound | UIUserNotificationTypeAlert;
        UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:types categories:nil];
        [[UIApplication sharedApplication] registerUserNotificationSettings:settings];

        
        
        // 初始化本地通知对象
        UILocalNotification*notification = [[UILocalNotification alloc] init];
        if (notification) {
            
            // 使用本地时区
            notification.timeZone = [NSTimeZone defaultTimeZone];
            
            // 5秒之后发出本地通知
            notification.fireDate = [NSDate dateWithTimeIntervalSinceNow:60];
            
            // 设置重复间隔
            notification.repeatInterval = kCFCalendarUnitMinute; //kCFCalendarUnitDay;
            
            // 设置提醒的文字内容
            notification.alertBody   = @"Wake up, man";
            notification.alertAction = NSLocalizedString(@"起床了", nil);
            
            // 通知提示音 使用默认的
            notification.soundName= UILocalNotificationDefaultSoundName;
            
            // 设置icon角标
            notification.applicationIconBadgeNumber++;
            
            // 设定通知的userInfo，用来标识该通知
            NSDictionary*info = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:notificationtag],@"fish",nil];
            notification.userInfo = info;
            
            // 设置本地通知
            [[UIApplication sharedApplication] scheduleLocalNotification:notification];
        
        
        }
    }
    else
    {
        NSArray *narry=[[UIApplication sharedApplication] scheduledLocalNotifications];
        NSUInteger acount=[narry count];
        if (acount>0)
        {
            // 遍历找到对应nfkey和notificationtag的通知
            for (int i=0; i<acount; i++)
            {
                UILocalNotification *myUILocalNotification = [narry objectAtIndex:i];
                NSDictionary *userInfo = myUILocalNotification.userInfo;
                NSNumber *obj = [userInfo objectForKey:@"fish"];
                int mytag=[obj intValue];
                if (mytag == notificationtag)
                {
                    // 删除本地通知
                    [[UIApplication sharedApplication] cancelLocalNotification:myUILocalNotification];
                    
                    NSLog(@"Remove");
                    break;
                }
            }
        }
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
