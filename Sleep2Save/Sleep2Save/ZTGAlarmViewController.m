//
//  ZTGAlarmViewController.m
//  Sleep2Save
//
//  Created by Zachary Graceffa on 11/3/13.
//  Copyright (c) 2013 Zachary Graceffa. All rights reserved.
//

#import "ZTGAlarmViewController.h"
#import "ZTGAlarmDetailViewController.h"
#import "ZTGAboutViewController.h"

@interface ZTGAlarmViewController ()

@end

@implementation ZTGAlarmViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.data = [ZTGSingleton sharedInstance];
    self.title = @"Sleep2Save";
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    [self.navigationController setToolbarHidden:NO];
    self.navigationController.toolbar.tintColor = [UIColor grayColor];
    self.navigationController.navigationBar.tintColor = [UIColor grayColor];
    
    //about button
    UIBarButtonItem *aboutButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"About"
                                   style:UIBarButtonItemStyleBordered
                                   target:self
                                   action:@selector(aboutView)];
    self.navigationItem.leftBarButtonItem = aboutButton;
    
    //cashout button
    UIBarButtonItem *cashoutButton = [[UIBarButtonItem alloc]
                                    initWithTitle:@"CASHOUT"
                                    style:UIBarButtonItemStyleBordered
                                    target:self
                                    action:@selector(cashoutPressed)];
    
    //balance label
    self.balance = [[UILabel alloc] initWithFrame:CGRectMake(0,0,215,20)];
    self.balance.text = [NSString stringWithFormat:@"               Balance: %@", self.data.getBalance];
    self.balance.backgroundColor = [UIColor clearColor];
    UIBarButtonItem *balanceItem = [[UIBarButtonItem alloc] initWithCustomView:self.balance];

    
    [self setToolbarItems:[NSArray arrayWithObjects:cashoutButton, balanceItem, nil] animated:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    if([self.data.listData count] > 0 && [self.data.listData count] <= 8)
        return 2;
    else
        return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    if (section == 1 || (section == 0 && [self.data.listData count] == 0))
        return 1;
    
    NSInteger count = 0;
    
    for (NSInteger i = 0; i < 8; i++ ) {
        if([[[self.data.listData objectAtIndex:i] name] length] != 0)
            count ++;
    }
    
    return count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    NSUInteger row = [indexPath row];
    
    if(indexPath.section == 1 || (indexPath.section == 0 && [self.data.listData count] == 0))
    {
        cell.textLabel.text = @"Create New Alarm...";
    }
    else if(indexPath.section == 0)
    {
        cell.textLabel.text = [[self.data.listData objectAtIndex:row] name];
    }
    
    return cell;
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
     ZTGAlarmDetailViewController *detailViewController = [[ZTGAlarmDetailViewController alloc] initWithNibName:@"ZTGAlarmDetailViewController" bundle:nil];
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    if(![cell.textLabel.text isEqual:@"Create New Alarm..."])
    {
        //initialize the alarm
    }
    
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     
}

-(IBAction)aboutView
{
    // Navigation logic may go here. Create and push another view controller.
    ZTGAboutViewController *aboutViewController = [[ZTGAboutViewController alloc] initWithNibName:@"ZTGAboutViewController" bundle:nil];
    
    // Pass the selected object to the new view controller.
    [self.navigationController pushViewController:aboutViewController animated:YES];
}

-(IBAction)cashoutPressed
{
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Operation Failed" message:@"Operation not yet developed." delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil];
    [alert show];
}

@end
