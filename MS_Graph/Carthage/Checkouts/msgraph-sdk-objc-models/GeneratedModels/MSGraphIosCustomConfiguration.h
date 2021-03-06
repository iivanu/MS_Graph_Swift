// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.




#import "MSGraphDeviceConfiguration.h"

@interface MSGraphIosCustomConfiguration : MSGraphDeviceConfiguration

  @property (nonnull, nonatomic, setter=setPayload:, getter=payload) NSString* payload;
    @property (nullable, nonatomic, setter=setPayloadFileName:, getter=payloadFileName) NSString* payloadFileName;
    @property (nonnull, nonatomic, setter=setPayloadName:, getter=payloadName) NSString* payloadName;
  
@end
