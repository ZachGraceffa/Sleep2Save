//
//  ZTGAlarm.h
//  Sleep2Save
//
//  Created by Zachary Graceffa on 11/20/13.
//  Copyright (c) 2013 Zachary Graceffa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZTGAlarm : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *time;
@property (strong, nonatomic) NSNumber *active;

- (void)setTime;
- (void)setDays;
- (void)setName;
- (void)setRinger;
- (void)setActivity:(BOOL *) activity;

-(BOOL)isActive;

@end
