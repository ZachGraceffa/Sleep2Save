//
//  ZTGToolbarViewController.h
//  Sleep2Save
//
//  Created by Zachary Graceffa on 11/3/13.
//  Copyright (c) 2013 Zachary Graceffa. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZTGAlarmViewController;

@interface ZTGToolbarViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *currentBalance;
//@property (strong, nonatomic) ZTGAlarmViewController *alarmViewController;

- (IBAction)cashOut:(id)sender;

@end
