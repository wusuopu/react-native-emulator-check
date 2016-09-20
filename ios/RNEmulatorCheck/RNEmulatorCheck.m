//
//  RNEmulatorCheck.m
//  RNEmulatorCheck
//
//  Created by lcj on 9/20/16.
//  Copyright © 2016 lcj. All rights reserved.
//

#import "RNEmulatorCheck.h"

@implementation RNEmulatorCheck

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
