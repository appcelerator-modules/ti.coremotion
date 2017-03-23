/**
 * Ti.CoreMotion
 *
 * Created by Hans Knoechel
 * Copyright (c) 2015 Appcelerator, Inc. All rights reserved.
 */

#import <CoreMotion/CoreMotion.h>
#import "TiModule.h"
#import "TiCoremotionAccelerometerProxy.h"
#import "TiCoremotionGyroscopeProxy.h"
#import "TiCoremotionMagnetometerProxy.h"
#import "TiCoremotionDeviceMotionProxy.h"
#import "TiCoremotionMotionActivityProxy.h"
#import "TiCoremotionStepCounterProxy.h"

@interface TiCoremotionModule : TiModule
{
    // To be removed in next major update,
    // since just there for fallback with 1.x versions.
    
    TiCoremotionAccelerometerProxy *accelerometer;
    TiCoremotionGyroscopeProxy *gyroscope;
    TiCoremotionMagnetometerProxy *magnetometer;
    TiCoremotionDeviceMotionProxy *deviceMotion;
    TiCoremotionMotionActivityProxy *motionActivity;
    TiCoremotionStepCounterProxy *stepCounter;
}

// ----------------------------------------------------
// Accelerometer
// ----------------------------------------------------

-(void)setAccelerometerUpdateInterval:(id)value;

-(void)startAccelerometerUpdates:(id)arg;

-(void)stopAccelerometerUpdates:(id)unused;

-(NSNumber*)isAccelerometerActive:(id)unused;

-(NSNumber*)isAccelerometerAvailable:(id)unused;

-(NSDictionary*)getAccelerometerData:(id)unused;


// ----------------------------------------------------
// Gyroscope
// ----------------------------------------------------

-(void)setGyroUpdateInterval:(id)value;

-(void)startGyroUpdates:(id)arg;

-(void)stopGyroUpdates:(id)unused;

-(NSNumber*)isGyroActive:(id)unused;

-(NSNumber*)isGyroAvailable:(id)unused;

-(NSDictionary*)getGyroData:(id)unused;


// ----------------------------------------------------
// Magnetometer
// ----------------------------------------------------

-(void)setMagnetometerUpdateInterval:(id)value;

-(void)startMagnetometerUpdates:(id)arg;

-(void)stopMagnetometerUpdates:(id)unused;

-(NSNumber*)isMagnetometerActive:(id)unused;

-(NSNumber*)isMagnetometerAvailable:(id)unused;

-(NSDictionary*)getMagnetometerData:(id)unused;


// ----------------------------------------------------
// Device Motion
// ----------------------------------------------------

-(void)setShowsDeviceMovementDisplay:(id)value;

-(void)setDeviceMotionUpdateInterval:(id)value;

-(void)startDeviceMotionUpdatesUsingReferenceFrame:(id)args;

-(void)startDeviceMotionUpdates:(id)arg;

-(void)stopDeviceMotionUpdates:(id)unused;

-(NSNumber*)getAttitudeReferenceFrame:(id)unused;

-(NSNumber*)availableAttitudeReferenceFrames:(id)unused;

-(NSNumber*)isDeviceMotionActive:(id)unused;

-(NSNumber*)isDeviceMotionAvailable:(id)unused;

-(NSDictionary*)getDeviceMotion:(id)unused;


// ----------------------------------------------------
// Motion Activity
// ----------------------------------------------------

-(NSNumber*)isActivityAvailable:(id)unused;

-(void)startActivityUpdates:(id)arg;

-(void)stopActivityUpdates:(id)unused;

-(void)queryActivity:(id)args;


// ----------------------------------------------------
// Step Counter
// ----------------------------------------------------

-(NSNumber*)isStepCountingAvailable:(id)unused;

-(void)startStepCountingUpdates:(id)args;

-(void)stopStepCountingUpdates:(id)unused;

-(void)queryStepCount:(id)args;

@end
