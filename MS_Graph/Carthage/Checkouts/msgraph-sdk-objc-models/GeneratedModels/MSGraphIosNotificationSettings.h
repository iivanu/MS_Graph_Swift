// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphIosNotificationAlertType.h"


#import "MSObject.h"

@interface MSGraphIosNotificationSettings : MSObject

@property (nonnull, nonatomic, setter=setAlertType:, getter=alertType) MSGraphIosNotificationAlertType* alertType;
@property (nullable, nonatomic, setter=setAppName:, getter=appName) NSString* appName;
@property (nonatomic, setter=setBadgesEnabled:, getter=badgesEnabled) BOOL badgesEnabled;
@property (nonnull, nonatomic, setter=setBundleID:, getter=bundleID) NSString* bundleID;
@property (nonatomic, setter=setEnabled:, getter=enabled) BOOL enabled;
@property (nullable, nonatomic, setter=setPublisher:, getter=publisher) NSString* publisher;
@property (nonatomic, setter=setShowInNotificationCenter:, getter=showInNotificationCenter) BOOL showInNotificationCenter;
@property (nonatomic, setter=setShowOnLockScreen:, getter=showOnLockScreen) BOOL showOnLockScreen;
@property (nonatomic, setter=setSoundsEnabled:, getter=soundsEnabled) BOOL soundsEnabled;

@end
