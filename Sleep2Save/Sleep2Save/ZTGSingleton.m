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

/*- (NSMutableArray *)getChannelNames
{
    return self.channelNames;
}

- (void)setChannels:(NSMutableArray *)ch
{
    channels = ch;
}*/

@end

