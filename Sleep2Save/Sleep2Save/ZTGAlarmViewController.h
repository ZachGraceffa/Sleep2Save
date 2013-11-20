//
//  ZTGAlarmViewController.h
//  Sleep2Save
//
//  Created by Zachary Graceffa on 11/3/13.
//  Copyright (c) 2013 Zachary Graceffa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZTGSingleton.h"
#import "ZTGAlarm.h"

@class ZTGAlarmDetailViewController;
@class ZTGAboutViewController;

@interface ZTGAlarmViewController : UITableViewController
@property (strong, nonatomic) ZTGSingleton *data;


@property (strong, nonatomic) IBOutlet UILabel *balance;

-(IBAction)aboutView;
-(IBAction)cashoutPressed;

@end
