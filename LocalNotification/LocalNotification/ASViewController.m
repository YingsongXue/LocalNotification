//
//  ASViewController.m
//  LocalNotification
//
//  Created by 薛 迎松 on 13-4-12.
//  Copyright (c) 2013年 薛 迎松. All rights reserved.
//

#import "ASViewController.h"

@interface ASViewController ()

@end

@implementation ASViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[UIApplication sharedApplication]cancelAllLocalNotifications];
    UILocalNotification *local = [[UILocalNotification alloc]init];
    local.soundName = @"1.mp3";
    [local setAlertBody:@"Test"];
//    [local setApplicationIconBadgeNumber:1];
    [[UIApplication sharedApplication]setApplicationIconBadgeNumber:0];
//    [local setAlertAction:@""];
    [local setRepeatInterval:NSMinuteCalendarUnit];
    [local setTimeZone:[NSTimeZone localTimeZone]];
    [local setFireDate:[NSDate dateWithTimeIntervalSinceNow:4]];
    [[UIApplication sharedApplication]scheduleLocalNotification:local];
    
//    exit(0);
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
