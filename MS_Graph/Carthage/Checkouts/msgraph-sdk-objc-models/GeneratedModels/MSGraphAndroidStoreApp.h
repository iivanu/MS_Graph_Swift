// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


@class MSGraphAndroidMinimumOperatingSystem; 


#import "MSGraphMobileApp.h"

@interface MSGraphAndroidStoreApp : MSGraphMobileApp

  @property (nullable, nonatomic, setter=setAppStoreUrl:, getter=appStoreUrl) NSString* appStoreUrl;
    @property (nullable, nonatomic, setter=setMinimumSupportedOperatingSystem:, getter=minimumSupportedOperatingSystem) MSGraphAndroidMinimumOperatingSystem* minimumSupportedOperatingSystem;
    @property (nullable, nonatomic, setter=setPackageId:, getter=packageId) NSString* packageId;
  
@end
