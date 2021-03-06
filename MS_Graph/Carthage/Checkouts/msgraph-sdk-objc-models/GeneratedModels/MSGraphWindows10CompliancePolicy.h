// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.


#import "MSGraphRequiredPasswordType.h"


#import "MSGraphDeviceCompliancePolicy.h"

@interface MSGraphWindows10CompliancePolicy : MSGraphDeviceCompliancePolicy

  @property (nonatomic, setter=setBitLockerEnabled:, getter=bitLockerEnabled) BOOL bitLockerEnabled;
    @property (nonatomic, setter=setCodeIntegrityEnabled:, getter=codeIntegrityEnabled) BOOL codeIntegrityEnabled;
    @property (nonatomic, setter=setEarlyLaunchAntiMalwareDriverEnabled:, getter=earlyLaunchAntiMalwareDriverEnabled) BOOL earlyLaunchAntiMalwareDriverEnabled;
    @property (nullable, nonatomic, setter=setMobileOsMaximumVersion:, getter=mobileOsMaximumVersion) NSString* mobileOsMaximumVersion;
    @property (nullable, nonatomic, setter=setMobileOsMinimumVersion:, getter=mobileOsMinimumVersion) NSString* mobileOsMinimumVersion;
    @property (nullable, nonatomic, setter=setOsMaximumVersion:, getter=osMaximumVersion) NSString* osMaximumVersion;
    @property (nullable, nonatomic, setter=setOsMinimumVersion:, getter=osMinimumVersion) NSString* osMinimumVersion;
    @property (nonatomic, setter=setPasswordBlockSimple:, getter=passwordBlockSimple) BOOL passwordBlockSimple;
    @property (nonatomic, setter=setPasswordExpirationDays:, getter=passwordExpirationDays) int32_t passwordExpirationDays;
    @property (nonatomic, setter=setPasswordMinimumCharacterSetCount:, getter=passwordMinimumCharacterSetCount) int32_t passwordMinimumCharacterSetCount;
    @property (nonatomic, setter=setPasswordMinimumLength:, getter=passwordMinimumLength) int32_t passwordMinimumLength;
    @property (nonatomic, setter=setPasswordMinutesOfInactivityBeforeLock:, getter=passwordMinutesOfInactivityBeforeLock) int32_t passwordMinutesOfInactivityBeforeLock;
    @property (nonatomic, setter=setPasswordPreviousPasswordBlockCount:, getter=passwordPreviousPasswordBlockCount) int32_t passwordPreviousPasswordBlockCount;
    @property (nonatomic, setter=setPasswordRequired:, getter=passwordRequired) BOOL passwordRequired;
    @property (nonatomic, setter=setPasswordRequiredToUnlockFromIdle:, getter=passwordRequiredToUnlockFromIdle) BOOL passwordRequiredToUnlockFromIdle;
    @property (nonnull, nonatomic, setter=setPasswordRequiredType:, getter=passwordRequiredType) MSGraphRequiredPasswordType* passwordRequiredType;
    @property (nonatomic, setter=setRequireHealthyDeviceReport:, getter=requireHealthyDeviceReport) BOOL requireHealthyDeviceReport;
    @property (nonatomic, setter=setSecureBootEnabled:, getter=secureBootEnabled) BOOL secureBootEnabled;
    @property (nonatomic, setter=setStorageRequireEncryption:, getter=storageRequireEncryption) BOOL storageRequireEncryption;
  
@end
