// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphDeviceEnrollmentPlatformRestriction : MSObject

@property (nullable, nonatomic, setter=setOsMaximumVersion:, getter=osMaximumVersion) NSString* osMaximumVersion;
@property (nullable, nonatomic, setter=setOsMinimumVersion:, getter=osMinimumVersion) NSString* osMinimumVersion;
@property (nonatomic, setter=setPersonalDeviceEnrollmentBlocked:, getter=personalDeviceEnrollmentBlocked) BOOL personalDeviceEnrollmentBlocked;
@property (nonatomic, setter=setPlatformBlocked:, getter=platformBlocked) BOOL platformBlocked;

@end
