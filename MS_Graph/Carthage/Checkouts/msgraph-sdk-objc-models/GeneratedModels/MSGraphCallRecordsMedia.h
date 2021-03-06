// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



@class MSGraphCallRecordsDeviceInfo, MSGraphCallRecordsNetworkInfo, MSGraphCallRecordsMediaStream; 


#import "MSObject.h"

@interface MSGraphCallRecordsMedia : MSObject

@property (nullable, nonatomic, setter=setCalleeDevice:, getter=calleeDevice) MSGraphCallRecordsDeviceInfo* calleeDevice;
@property (nullable, nonatomic, setter=setCalleeNetwork:, getter=calleeNetwork) MSGraphCallRecordsNetworkInfo* calleeNetwork;
@property (nullable, nonatomic, setter=setCallerDevice:, getter=callerDevice) MSGraphCallRecordsDeviceInfo* callerDevice;
@property (nullable, nonatomic, setter=setCallerNetwork:, getter=callerNetwork) MSGraphCallRecordsNetworkInfo* callerNetwork;
@property (nullable, nonatomic, setter=setLabel:, getter=label) NSString* label;
@property (nullable, nonatomic, setter=setStreams:, getter=streams) NSArray* streams;

@end
