//
//  ZTGSingleton.m
//  Sleep2Save
//
//  Created by Zachary Graceffa on 11/13/13.
//  Copyright (c) 2013 Zachary Graceffa. All rights reserved.
//

#import "ZTGSingleton.h"

@implementation ZTGSingleton

- (id)init {
    if (self = [super init]) {
        
        self.listData = [[ NSMutableArray alloc ] initWithCapacity: 8 ];
        
        for (int i = 0; i < 8; i++ ) {
            ZTGAlarm *alarm = [[ZTGAlarm alloc] init];
            
            [alarm setName:[NSString stringWithFormat:@"Alarm %d", i]];
            
            [self.listData addObject:alarm];
            
        }
        
        self.balance = [NSNumber numberWithDouble:0.00];
        self.formatter = [[NSNumberFormatter alloc] init];
        [self.formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    }
    return self;
}


+ (ZTGSingleton *)sharedInstance
{
    static ZTGSingleton *myself;
    @synchronized(self)
    {
        if (!myself) {
            myself = [[ZTGSingleton alloc] init];
        }
        return myself;
    }
}

- (NSString *)getBalance
{
    return [self.formatter stringFromNumber:self.balance];
}

/*- (NSMutableArray *)getChannelNames
{
    return self.channelNames;
}

- (void)setChannels:(NSMutableArray *)ch
{
    channels = ch;
}*/

@end

