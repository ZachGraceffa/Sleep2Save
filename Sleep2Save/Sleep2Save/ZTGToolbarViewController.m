//
//  ZTGToolbarViewController.m
//  Sleep2Save
//
//  Created by Zachary Graceffa on 11/3/13.
//  Copyright (c) 2013 Zachary Graceffa. All rights reserved.
//

#import "ZTGToolbarViewController.h"
#import "ZTGAlarmViewController.h"

@interface ZTGToolbarViewController ()

@end

@implementation ZTGToolbarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //self.alarmViewController = [[ZTGAlarmViewController alloc] initWithNibName:@"ZTGAlarmViewController" bundle:nil];
    ZTGAlarmViewController *alarmView = [[ZTGAlarmViewController alloc] init];
    UINavigationController *navigation = [[UINavigationController alloc] initWithRootViewController:alarmView];
    
    [self.view insertSubview:navigation.view atIndex:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cashOut:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Operation Unsuccessful" message:@"Function not developed yet." delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil];
    [alert show];
}

@end
