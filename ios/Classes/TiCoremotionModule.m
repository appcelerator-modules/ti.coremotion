/**
 * Ti.CoreMotion
 *
 * Created by Hans Knoechel
 * Copyright (c) 2015 Appcelerator, Inc. All rights reserved.
 */

#import "TiCoremotionModule.h"
#import "CMHelper.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@implementation TiCoremotionModule

#pragma mark - Internal

- (id)moduleGUID
{
  return @"bba89061-0fdb-4ff1-95a8-02876f5601f9";
}

- (NSString *)moduleId
{
  return @"ti.coremotion";
}

- (NSString *)apiName
{
  return @"Ti.CoreMotion";
}

#pragma mark - Lifecycle

- (void)startup
{
  [super startup];
  NSLog(@"[INFO] %@ loaded", self);
}

#pragma mark - Public APIs

#pragma mark Accelerometer (deprecated)

- (void)setAccelerometerUpdateInterval:(id)value
{
  [CMHelper logDeprecatedMethod:@"setAccelerometerUpdateInterval" withNewMethod:@"Accelerometer.setAccelerometerUpdateInterval"];
  [[self sharedAccelerometer] setAccelerometerUpdateInterval:value];
}

- (void)startAccelerometerUpdates:(id)arg
{
  [CMHelper logDeprecatedMethod:@"startAccelerometerUpdates" withNewMethod:@"Accelerometer.startAccelerometerUpdates"];
  [[self sharedAccelerometer] startAccelerometerUpdates:arg];
}

- (void)stopAccelerometerUpdates:(id)unused
{
  [CMHelper logDeprecatedMethod:@"stopAccelerometerUpdates" withNewMethod:@"Accelerometer.stopAccelerometerUpdates"];
  [[self sharedAccelerometer] stopAccelerometerUpdates:unused];
}

- (NSNumber *)isAccelerometerActive:(id)unused
{
  [CMHelper logDeprecatedMethod:@"isAccelerometerActive" withNewMethod:@"Accelerometer.isAccelerometerActive"];
  return [[self sharedAccelerometer] isAccelerometerActive:unused];
}

- (NSNumber *)isAccelerometerAvailable:(id)unused
{
  [CMHelper logDeprecatedMethod:@"isAccelerometerAvailable" withNewMethod:@"Accelerometer.isAccelerometerAvailable"];
  return [[self sharedAccelerometer] isAccelerometerAvailable:unused];
}

- (NSDictionary *)getAccelerometerData:(id)unused
{
  [CMHelper logDeprecatedMethod:@"getAccelerometerData" withNewMethod:@"Accelerometer.getAccelerometerData"];
  return [[self sharedAccelerometer] getAccelerometerData:unused];
}

#pragma mark Gyroscope (deprecated)

- (void)setGyroUpdateInterval:(id)value
{
  [CMHelper logDeprecatedMethod:@"setGyroUpdateInterval" withNewMethod:@"Gyroscope.setGyroUpdateInterval"];
  [[self sharedGyroscope] setGyroUpdateInterval:value];
}

- (void)startGyroUpdates:(id)arg
{
  [CMHelper logDeprecatedMethod:@"startGyroUpdates" withNewMethod:@"Gyroscope.startGyroUpdates"];
  [[self sharedGyroscope] startGyroUpdates:arg];
}

- (void)stopGyroUpdates:(id)unused
{
  [CMHelper logDeprecatedMethod:@"stopGyroUpdates" withNewMethod:@"Gyroscope.stopGyroUpdates"];
  [[self sharedGyroscope] stopGyroUpdates:unused];
}

- (NSNumber *)isGyroActive:(id)unused
{
  [CMHelper logDeprecatedMethod:@"isGyroActive" withNewMethod:@"Gyroscope.isGyroActive"];
  return [[self sharedGyroscope] isGyroActive:unused];
}

- (NSNumber *)isGyroAvailable:(id)unused
{
  [CMHelper logDeprecatedMethod:@"isGyroAvailable" withNewMethod:@"Gyroscope.isGyroAvailable"];
  return [[self sharedGyroscope] isGyroAvailable:unused];
}

- (NSDictionary *)getGyroData:(id)unused
{
  [CMHelper logDeprecatedMethod:@"getGyroData" withNewMethod:@"Gyroscope.getGyroData"];
  return [[self sharedGyroscope] getGyroData:unused];
}

#pragma mark Magnetometer (deprecated)

- (void)setMagnetometerUpdateInterval:(id)value
{
  [CMHelper logDeprecatedMethod:@"setMagnetometerUpdateInterval" withNewMethod:@"Magnetometer.setMagnetometerUpdateInterval"];
  [[self sharedMagnetometer] setMagnetometerUpdateInterval:value];
}

- (void)startMagnetometerUpdates:(id)arg
{
  [CMHelper logDeprecatedMethod:@"startMagnetometerUpdates" withNewMethod:@"Magnetometer.startMagnetometerUpdates"];
  [[self sharedMagnetometer] startMagnetometerUpdates:arg];
}

- (void)stopMagnetometerUpdates:(id)unused
{
  [CMHelper logDeprecatedMethod:@"stopMagnetometerUpdates" withNewMethod:@"Magnetometer.stopMagnetometerUpdates"];
  [[self sharedMagnetometer] stopMagnetometerUpdates:unused];
}

- (NSNumber *)isMagnetometerActive:(id)unused
{
  [CMHelper logDeprecatedMethod:@"isMagnetometerActive" withNewMethod:@"Magnetometer.isMagnetometerActive"];
  return [[self sharedMagnetometer] isMagnetometerActive:unused];
}

- (NSNumber *)isMagnetometerAvailable:(id)unused
{
  [CMHelper logDeprecatedMethod:@"isMagnetometerAvailable" withNewMethod:@"Magnetometer.isMagnetometerAvailable"];
  return [[self sharedMagnetometer] isMagnetometerAvailable:unused];
}

- (NSDictionary *)getMagnetometerData:(id)unused
{
  [CMHelper logDeprecatedMethod:@"getMagnetometerData" withNewMethod:@"Magnetometer.getMagnetometerData"];
  return [[self sharedMagnetometer] getMagnetometerData:unused];
}

#pragma mark Device Motion (deprecated)

- (void)setShowsDeviceMovementDisplay:(id)value
{
  [CMHelper logDeprecatedMethod:@"setShowsDeviceMovementDisplay" withNewMethod:@"DeviceMotion.setShowsDeviceMovementDisplay"];
  [[self sharedDeviceMotion] setShowsDeviceMovementDisplay:value];
}

- (void)setDeviceMotionUpdateInterval:(id)value
{
  [CMHelper logDeprecatedMethod:@"setDeviceMotionUpdateInterval" withNewMethod:@"DeviceMotion.setDeviceMotionUpdateInterval"];
  [[self sharedDeviceMotion] setDeviceMotionUpdateInterval:value];
}

- (void)startDeviceMotionUpdatesUsingReferenceFrame:(id)args
{
  [CMHelper logDeprecatedMethod:@"startDeviceMotionUpdatesUsingReferenceFrame" withNewMethod:@"DeviceMotion.startDeviceMotionUpdatesUsingReferenceFrame"];
  [[self sharedDeviceMotion] startDeviceMotionUpdatesUsingReferenceFrame:args];
}

- (void)startDeviceMotionUpdates:(id)arg
{
  [CMHelper logDeprecatedMethod:@"startDeviceMotionUpdates" withNewMethod:@"DeviceMotion.startDeviceMotionUpdates"];
  [[self sharedDeviceMotion] startDeviceMotionUpdates:arg];
}

- (void)stopDeviceMotionUpdates:(id)unused
{
  [CMHelper logDeprecatedMethod:@"stopDeviceMotionUpdates" withNewMethod:@"DeviceMotion.stopDeviceMotionUpdates"];
  [[self sharedDeviceMotion] stopDeviceMotionUpdates:unused];
}

- (NSNumber *)getAttitudeReferenceFrame:(id)unused
{
  [CMHelper logDeprecatedMethod:@"getAttitudeReferenceFrame" withNewMethod:@"DeviceMotion.getAttitudeReferenceFrame"];
  return [[self sharedDeviceMotion] getAttitudeReferenceFrame:unused];
}

- (NSNumber *)availableAttitudeReferenceFrames:(id)unused
{
  [CMHelper logDeprecatedMethod:@"availableAttitudeReferenceFrames" withNewMethod:@"DeviceMotion.availableAttitudeReferenceFrames"];
  return [[self sharedDeviceMotion] availableAttitudeReferenceFrames:unused];
}

- (NSNumber *)isDeviceMotionActive:(id)unused
{
  [CMHelper logDeprecatedMethod:@"isDeviceMotionActive" withNewMethod:@"DeviceMotion.isDeviceMotionActive"];
  return [[self sharedDeviceMotion] isDeviceMotionActive:unused];
}

- (NSNumber *)isDeviceMotionAvailable:(id)unused
{
  [CMHelper logDeprecatedMethod:@"isDeviceMotionAvailable" withNewMethod:@"DeviceMotion.isDeviceMotionAvailable"];
  return [[self sharedDeviceMotion] isDeviceMotionAvailable:unused];
}

- (NSDictionary *)getDeviceMotion:(id)unused
{
  [CMHelper logDeprecatedMethod:@"getDeviceMotion" withNewMethod:@"DeviceMotion.getDeviceMotion"];
  return [[self sharedDeviceMotion] getDeviceMotion:unused];
}

#pragma mark Motion Activity (deprecated)

- (NSNumber *)isActivityAvailable:(id)unused
{
  [CMHelper logDeprecatedMethod:@"isActivityAvailable" withNewMethod:@"MotionActivity.isActivityAvailable"];
  return [[self sharedMotionActivity] isActivityAvailable:unused];
}

- (void)startActivityUpdates:(id)arg
{
  [CMHelper logDeprecatedMethod:@"startActivityUpdates" withNewMethod:@"MotionActivity.startActivityUpdates"];
  return [[self sharedMotionActivity] startActivityUpdates:arg];
}

- (void)stopActivityUpdates:(id)unused
{
  [CMHelper logDeprecatedMethod:@"stopActivityUpdates" withNewMethod:@"MotionActivity.stopActivityUpdates"];
  return [[self sharedMotionActivity] stopActivityUpdates:unused];
}

- (void)queryActivity:(id)args
{
  [CMHelper logDeprecatedMethod:@"queryActivity" withNewMethod:@"MotionActivity.queryActivity"];
  return [[self sharedMotionActivity] queryActivity:args];
}

#pragma mark Step Counter (deprecated)

- (NSNumber *)isStepCountingAvailable:(id)unused
{
  [CMHelper logDeprecatedMethod:@"isStepCountingAvailable" withNewMethod:@"Pedometer.isStepCountingAvailable"];
  return [[self sharedStepCounter] isStepCountingAvailable:unused];
}

- (void)startStepCountingUpdates:(id)args
{
  [CMHelper logDeprecatedMethod:@"startStepCountingUpdates" withNewMethod:@"Pedometer.startPedometerUpdates"];
  [[self sharedStepCounter] startStepCountingUpdates:args];
}

- (void)stopStepCountingUpdates:(id)unused
{
  [CMHelper logDeprecatedMethod:@"stopStepCountingUpdates" withNewMethod:@"Pedometer.stopPedometerUpdates"];
  [[self sharedStepCounter] stopStepCountingUpdates:unused];
}

- (void)queryStepCount:(id)args
{
  [CMHelper logDeprecatedMethod:@"queryStepCount" withNewMethod:@"Pedometer.queryPedometerData"];
  [[self sharedStepCounter] queryStepCount:args];
}

#pragma mark - Singleton instances (deprecated)

- (TiCoremotionAccelerometerProxy *)sharedAccelerometer
{
  if (accelerometer == nil) {
    accelerometer = [[TiCoremotionAccelerometerProxy alloc] init];
  }

  return accelerometer;
}

- (TiCoremotionGyroscopeProxy *)sharedGyroscope
{
  if (gyroscope == nil) {
    gyroscope = [[TiCoremotionGyroscopeProxy alloc] init];
  }

  return gyroscope;
}

- (TiCoremotionMagnetometerProxy *)sharedMagnetometer
{
  if (magnetometer == nil) {
    magnetometer = [[TiCoremotionMagnetometerProxy alloc] init];
  }

  return magnetometer;
}

- (TiCoremotionDeviceMotionProxy *)sharedDeviceMotion
{
  if (deviceMotion == nil) {
    deviceMotion = [[TiCoremotionDeviceMotionProxy alloc] init];
  }

  return deviceMotion;
}

- (TiCoremotionMotionActivityProxy *)sharedMotionActivity
{
  if (motionActivity == nil) {
    motionActivity = [[TiCoremotionMotionActivityProxy alloc] init];
  }

  return motionActivity;
}

- (TiCoremotionStepCounterProxy *)sharedStepCounter
{
  if (stepCounter == nil) {
    stepCounter = [[TiCoremotionStepCounterProxy alloc] init];
  }

  return stepCounter;
}

#pragma mark - Constants

#pragma mark Errors

MAKE_SYSTEM_PROP(ERROR_NULL, CMErrorNULL);
MAKE_SYSTEM_PROP(ERROR_DEVICE_REQUIRES_MOVEMENT, CMErrorDeviceRequiresMovement);
MAKE_SYSTEM_PROP(ERROR_TRUE_NORTH_NOT_AVAILABLE, CMErrorTrueNorthNotAvailable);
MAKE_SYSTEM_PROP(ERROR_UNKNOWN, CMErrorUnknown);
MAKE_SYSTEM_PROP(ERROR_MOTION_ACTIVITY_NOT_AVAILABLE, CMErrorMotionActivityNotAvailable);
MAKE_SYSTEM_PROP(ERROR_MOTION_ACTIVITY_NOT_AUTHORIZED, CMErrorMotionActivityNotAuthorized);
MAKE_SYSTEM_PROP(ERROR_MOTION_ACTIVITY_NOT_ENTITLED, CMErrorMotionActivityNotEntitled);
MAKE_SYSTEM_PROP(ERROR_INVALID_PARAMETER, CMErrorInvalidParameter);

#pragma mark Attitude Reference Frames

MAKE_SYSTEM_PROP(ATTITUDE_REFERENCE_FRAME_X_ARBITRARY_Z_VERTICAL, CMAttitudeReferenceFrameXArbitraryZVertical);
MAKE_SYSTEM_PROP(ATTITUDE_REFERENCE_FRAME_X_ARBITRARY_CORRECTED_Z_VERTICAL, CMAttitudeReferenceFrameXArbitraryCorrectedZVertical);
MAKE_SYSTEM_PROP(ATTITUDE_REFERENCE_FRAME_X_MAGNETIC_NORTH_Z_VERTICAL, CMAttitudeReferenceFrameXMagneticNorthZVertical);
MAKE_SYSTEM_PROP(ATTITUDE_REFERENCE_FRAME_X_TRUE_NORTH_Z_VERTICAL, CMAttitudeReferenceFrameXTrueNorthZVertical);

#pragma mark Magnetic Field Calibration Accuracy

MAKE_SYSTEM_PROP(MAGNETIC_FIELD_CALIBRATION_ACCURACY_UNCALIBRATED, CMMagneticFieldCalibrationAccuracyUncalibrated);
MAKE_SYSTEM_PROP(MAGNETIC_FIELD_CALIBRATION_ACCURACY_LOW, CMMagneticFieldCalibrationAccuracyLow);
MAKE_SYSTEM_PROP(MAGNETIC_FIELD_CALIBRATION_ACCURACY_MEDIUM, CMMagneticFieldCalibrationAccuracyMedium);
MAKE_SYSTEM_PROP(MAGNETIC_FIELD_CALIBRATION_ACCURACY_HIGH, CMMagneticFieldCalibrationAccuracyHigh);

#pragma mark Motion Activity Confidence

MAKE_SYSTEM_PROP(MOTION_ACTIVITY_CONFIDENCE_LOW, CMMotionActivityConfidenceLow);
MAKE_SYSTEM_PROP(MOTION_ACTIVITY_CONFIDENCE_MEDIUM, CMMotionActivityConfidenceMedium);
MAKE_SYSTEM_PROP(MOTION_ACTIVITY_CONFIDENCE_HIGH, CMMotionActivityConfidenceHigh);

#pragma mark Authorization Status

#if IS_XCODE_9
MAKE_SYSTEM_PROP(AUTHORIZATION_STATUS_AUTHORIZED, CMAuthorizationStatusAuthorized);
MAKE_SYSTEM_PROP(AUTHORIZATION_STATUS_DENIED, CMAuthorizationStatusDenied);
MAKE_SYSTEM_PROP(AUTHORIZATION_STATUS_NOT_DETERMINED, CMAuthorizationStatusNotDetermined);
MAKE_SYSTEM_PROP(AUTHORIZATION_STATUS_RESTRICTED, CMAuthorizationStatusRestricted);
#endif

@end
