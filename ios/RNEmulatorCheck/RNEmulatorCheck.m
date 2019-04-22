//
//  RNEmulatorCheck.m
//  RNEmulatorCheck
//
//  Created by lcj on 9/20/16.
//  Copyright © 2016 lcj. All rights reserved.
//

#import "RNEmulatorCheck.h"

#include <TargetConditionals.h>

@implementation RNEmulatorCheck
- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

+ (BOOL)requiresMainQueueSetup
{
    return NO;
}

RCT_EXPORT_MODULE();

- (NSDictionary *)constantsToExport
{
  #if TARGET_OS_SIMULATOR
    return @{ @"isEmulator": @TRUE };
  #else
    return @{ @"isEmulator": @FALSE };
  #endif
}
@end
