// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphDaylightTimeZoneOffset, MSGraphStandardTimeZoneOffset; 


#import "MSGraphTimeZoneBase.h"

@interface MSGraphCustomTimeZone : MSGraphTimeZoneBase

@property (nonatomic, setter=setBias:, getter=bias) int32_t bias;
@property (nullable, nonatomic, setter=setDaylightOffset:, getter=daylightOffset) MSGraphDaylightTimeZoneOffset* daylightOffset;
@property (nullable, nonatomic, setter=setStandardOffset:, getter=standardOffset) MSGraphStandardTimeZoneOffset* standardOffset;

@end
