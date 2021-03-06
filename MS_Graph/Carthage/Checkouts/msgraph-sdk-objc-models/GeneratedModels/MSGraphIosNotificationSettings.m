// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphIosNotificationSettings()
{
    MSGraphIosNotificationAlertType* _alertType;
    NSString* _appName;
    BOOL _badgesEnabled;
    NSString* _bundleID;
    BOOL _enabled;
    NSString* _publisher;
    BOOL _showInNotificationCenter;
    BOOL _showOnLockScreen;
    BOOL _soundsEnabled;
}
@end

@implementation MSGraphIosNotificationSettings

- (MSGraphIosNotificationAlertType*) alertType
{
    if(!_alertType){
        _alertType = [self.dictionary[@"alertType"] toMSGraphIosNotificationAlertType];
    }
    return _alertType;
}

- (void) setAlertType: (MSGraphIosNotificationAlertType*) val
{
    _alertType = val;
    self.dictionary[@"alertType"] = val;
}

- (NSString*) appName
{
    if([[NSNull null] isEqual:self.dictionary[@"appName"]])
    {
        return nil;
    }   
    return self.dictionary[@"appName"];
}

- (void) setAppName: (NSString*) val
{
    self.dictionary[@"appName"] = val;
}

- (BOOL) badgesEnabled
{
    _badgesEnabled = [self.dictionary[@"badgesEnabled"] boolValue];
    return _badgesEnabled;
}

- (void) setBadgesEnabled: (BOOL) val
{
    _badgesEnabled = val;
    self.dictionary[@"badgesEnabled"] = @(val);
}

- (NSString*) bundleID
{
    return self.dictionary[@"bundleID"];
}

- (void) setBundleID: (NSString*) val
{
    self.dictionary[@"bundleID"] = val;
}

- (BOOL) enabled
{
    _enabled = [self.dictionary[@"enabled"] boolValue];
    return _enabled;
}

- (void) setEnabled: (BOOL) val
{
    _enabled = val;
    self.dictionary[@"enabled"] = @(val);
}

- (NSString*) publisher
{
    if([[NSNull null] isEqual:self.dictionary[@"publisher"]])
    {
        return nil;
    }   
    return self.dictionary[@"publisher"];
}

- (void) setPublisher: (NSString*) val
{
    self.dictionary[@"publisher"] = val;
}

- (BOOL) showInNotificationCenter
{
    _showInNotificationCenter = [self.dictionary[@"showInNotificationCenter"] boolValue];
    return _showInNotificationCenter;
}

- (void) setShowInNotificationCenter: (BOOL) val
{
    _showInNotificationCenter = val;
    self.dictionary[@"showInNotificationCenter"] = @(val);
}

- (BOOL) showOnLockScreen
{
    _showOnLockScreen = [self.dictionary[@"showOnLockScreen"] boolValue];
    return _showOnLockScreen;
}

- (void) setShowOnLockScreen: (BOOL) val
{
    _showOnLockScreen = val;
    self.dictionary[@"showOnLockScreen"] = @(val);
}

- (BOOL) soundsEnabled
{
    _soundsEnabled = [self.dictionary[@"soundsEnabled"] boolValue];
    return _soundsEnabled;
}

- (void) setSoundsEnabled: (BOOL) val
{
    _soundsEnabled = val;
    self.dictionary[@"soundsEnabled"] = @(val);
}

@end
