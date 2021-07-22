/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-Present by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiCoremotionAltimeterProxy.h"
#import "CMHelper.h"

@implementation TiCoremotionAltimeterProxy

#pragma mark Public APIs

- (NSString *)apiName
{
  return @"Ti.CoreMotion.Altimeter";
}

- (NSNumber *)isSupported:(id)unused
{
  return NUMBOOL(YES);
}

#if IS_XCODE_9
- (NSNumber *)authorizationStatus:(id)unused
{
  if (@available(iOS 11_0, *)) {
    return NUMINT([CMAltimeter authorizationStatus]);
  } else {
    return NUMINT(-1);
  }
}

- (NSNumber *)hasAltimeterPermissions:(id)unused
{
  if (@available(iOS 11_0, *)) {
    return NUMBOOL([CMAltimeter authorizationStatus] == CMAuthorizationStatusAuthorized);
  } else {
    return NUMINT(NO);
  }
}
#endif

- (NSNumber *)isRelativeAltitudeAvailable:(id)unused
{
  return NUMBOOL([CMAltimeter isRelativeAltitudeAvailable]);
}

- (void)startRelativeAltitudeUpdates:(id)value
{
  ENSURE_SINGLE_ARG(value, KrollCallback);

  [[self sharedAltimeter] startRelativeAltitudeUpdatesToQueue:[NSOperationQueue new]
                                                  withHandler:^(CMAltitudeData *altitudeData, NSError *error) {
                                                    NSDictionary *eventDict = [CMHelper dictionaryWithError:error andDictionary:[CMHelper dictionaryFromAltitudeData:altitudeData]];
                                                    NSArray *invocationArray = [[NSArray alloc] initWithObjects:&eventDict count:1];

                                                    [value call:invocationArray thisObject:self];
                                                  }];
}

- (void)stopRelativeAltitudeUpdates:(id)unused
{
  [[self sharedAltimeter] stopRelativeAltitudeUpdates];
}

#pragma mark Singleton instance

- (CMAltimeter *)sharedAltimeter
{
  if (altimeter == nil) {
    altimeter = [[CMAltimeter alloc] init];
  }

  return altimeter;
}

@end
