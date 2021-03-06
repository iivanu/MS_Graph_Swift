// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIosUpdateDeviceStatus()
{
    NSDate* _complianceGracePeriodExpirationDateTime;
    NSString* _deviceDisplayName;
    NSString* _deviceId;
    NSString* _deviceModel;
    MSGraphIosUpdatesInstallStatus* _installStatus;
    NSDate* _lastReportedDateTime;
    NSString* _osVersion;
    MSGraphComplianceStatus* _status;
    NSString* _userId;
    NSString* _userName;
    NSString* _userPrincipalName;
}
@end

@implementation MSGraphIosUpdateDeviceStatus

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.iosUpdateDeviceStatus";
    }
    return self;
}
- (NSDate*) complianceGracePeriodExpirationDateTime
{
    if(!_complianceGracePeriodExpirationDateTime){
        _complianceGracePeriodExpirationDateTime = [NSDate ms_dateFromString: self.dictionary[@"complianceGracePeriodExpirationDateTime"]];
    }
    return _complianceGracePeriodExpirationDateTime;
}

- (void) setComplianceGracePeriodExpirationDateTime: (NSDate*) val
{
    _complianceGracePeriodExpirationDateTime = val;
    self.dictionary[@"complianceGracePeriodExpirationDateTime"] = [val ms_toString];
}

- (NSString*) deviceDisplayName
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceDisplayName"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceDisplayName"];
}

- (void) setDeviceDisplayName: (NSString*) val
{
    self.dictionary[@"deviceDisplayName"] = val;
}

- (NSString*) deviceId
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceId"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceId"];
}

- (void) setDeviceId: (NSString*) val
{
    self.dictionary[@"deviceId"] = val;
}

- (NSString*) deviceModel
{
    if([[NSNull null] isEqual:self.dictionary[@"deviceModel"]])
    {
        return nil;
    }   
    return self.dictionary[@"deviceModel"];
}

- (void) setDeviceModel: (NSString*) val
{
    self.dictionary[@"deviceModel"] = val;
}

- (MSGraphIosUpdatesInstallStatus*) installStatus
{
    if(!_installStatus){
        _installStatus = [self.dictionary[@"installStatus"] toMSGraphIosUpdatesInstallStatus];
    }
    return _installStatus;
}

- (void) setInstallStatus: (MSGraphIosUpdatesInstallStatus*) val
{
    _installStatus = val;
    self.dictionary[@"installStatus"] = val;
}

- (NSDate*) lastReportedDateTime
{
    if(!_lastReportedDateTime){
        _lastReportedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastReportedDateTime"]];
    }
    return _lastReportedDateTime;
}

- (void) setLastReportedDateTime: (NSDate*) val
{
    _lastReportedDateTime = val;
    self.dictionary[@"lastReportedDateTime"] = [val ms_toString];
}

- (NSString*) osVersion
{
    if([[NSNull null] isEqual:self.dictionary[@"osVersion"]])
    {
        return nil;
    }   
    return self.dictionary[@"osVersion"];
}

- (void) setOsVersion: (NSString*) val
{
    self.dictionary[@"osVersion"] = val;
}

- (MSGraphComplianceStatus*) status
{
    if(!_status){
        _status = [self.dictionary[@"status"] toMSGraphComplianceStatus];
    }
    return _status;
}

- (void) setStatus: (MSGraphComplianceStatus*) val
{
    _status = val;
    self.dictionary[@"status"] = val;
}

- (NSString*) userId
{
    if([[NSNull null] isEqual:self.dictionary[@"userId"]])
    {
        return nil;
    }   
    return self.dictionary[@"userId"];
}

- (void) setUserId: (NSString*) val
{
    self.dictionary[@"userId"] = val;
}

- (NSString*) userName
{
    if([[NSNull null] isEqual:self.dictionary[@"userName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userName"];
}

- (void) setUserName: (NSString*) val
{
    self.dictionary[@"userName"] = val;
}

- (NSString*) userPrincipalName
{
    if([[NSNull null] isEqual:self.dictionary[@"userPrincipalName"]])
    {
        return nil;
    }   
    return self.dictionary[@"userPrincipalName"];
}

- (void) setUserPrincipalName: (NSString*) val
{
    self.dictionary[@"userPrincipalName"] = val;
}


@end
