/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2017 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */
#import "TiProxy.h"
#import <CoreMotion/CoreMotion.h>

@interface TiCoremotionAltimeterProxy : TiProxy {
  CMAltimeter *altimeter;
}

- (NSNumber *)isSupported:(id)unused;

#if IS_XCODE_9
- (NSNumber *)authorizationStatus:(id)unused;

- (NSNumber *)hasAltimeterPermissions:(id)unused;
#endif

- (NSNumber *)isRelativeAltitudeAvailable:(id)unused;

- (void)startRelativeAltitudeUpdates:(id)value;

- (void)stopRelativeAltitudeUpdates:(id)unused;

- (CMAltimeter *)sharedAltimeter;

@end
