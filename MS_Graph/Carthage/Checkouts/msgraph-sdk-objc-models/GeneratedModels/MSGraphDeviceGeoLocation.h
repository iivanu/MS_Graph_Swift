// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphDeviceGeoLocation : MSObject

@property (nonatomic, setter=setAltitude:, getter=altitude) double altitude;
@property (nonatomic, setter=setHeading:, getter=heading) double heading;
@property (nonatomic, setter=setHorizontalAccuracy:, getter=horizontalAccuracy) double horizontalAccuracy;
@property (nonnull, nonatomic, setter=setLastCollectedDateTime:, getter=lastCollectedDateTime) NSDate* lastCollectedDateTime;
@property (nonatomic, setter=setLatitude:, getter=latitude) double latitude;
@property (nonatomic, setter=setLongitude:, getter=longitude) double longitude;
@property (nonatomic, setter=setSpeed:, getter=speed) double speed;
@property (nonatomic, setter=setVerticalAccuracy:, getter=verticalAccuracy) double verticalAccuracy;

@end
