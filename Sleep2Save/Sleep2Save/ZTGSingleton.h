//
//  ZTGSingleton.h
//  Sleep2Save
//
//  Created by Zachary Graceffa on 11/13/13.
//  Copyright (c) 2013 Zachary Graceffa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZTGSingleton : NSObject

//@property (strong, nonatomic) NSMutableArray *channelNames;

+ (ZTGSingleton *)sharedInstance;

@end
