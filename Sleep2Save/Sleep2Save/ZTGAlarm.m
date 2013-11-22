//
//  ZTGAlarm.m
//  Sleep2Save
//
//  Created by Zachary Graceffa on 11/20/13.
//  Copyright (c) 2013 Zachary Graceffa. All rights reserved.
//

#import "ZTGAlarm.h"

@implementation ZTGAlarm

- (id)init
{
    if (self = [super init])
    {
        self.active = [NSNumber numberWithInt:0];
    }
    return self;
}

- (void)setTime
{
}

- (void)setDays
{
}



- (void)setRinger
{
}

- (void)setActivity:(BOOL *) activity
{
    if (activity) {
        self.active = [NSNumber numberWithInt:1];
    }
    else
        self.active = [NSNumber numberWithInt:0];
}

-(BOOL)isActive
{
    if (self.active == [NSNumber numberWithInt:1]) {
        return YES;
    }
    
    return NO;
}

@end
