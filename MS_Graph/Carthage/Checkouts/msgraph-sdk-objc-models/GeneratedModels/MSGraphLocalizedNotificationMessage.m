// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphLocalizedNotificationMessage()
{
    BOOL _isDefault;
    NSDate* _lastModifiedDateTime;
    NSString* _locale;
    NSString* _messageTemplate;
    NSString* _subject;
}
@end

@implementation MSGraphLocalizedNotificationMessage

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.localizedNotificationMessage";
    }
    return self;
}
- (BOOL) isDefault
{
    _isDefault = [self.dictionary[@"isDefault"] boolValue];
    return _isDefault;
}

- (void) setIsDefault: (BOOL) val
{
    _isDefault = val;
    self.dictionary[@"isDefault"] = @(val);
}

- (NSDate*) lastModifiedDateTime
{
    if(!_lastModifiedDateTime){
        _lastModifiedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastModifiedDateTime"]];
    }
    return _lastModifiedDateTime;
}

- (void) setLastModifiedDateTime: (NSDate*) val
{
    _lastModifiedDateTime = val;
    self.dictionary[@"lastModifiedDateTime"] = [val ms_toString];
}

- (NSString*) locale
{
    return self.dictionary[@"locale"];
}

- (void) setLocale: (NSString*) val
{
    self.dictionary[@"locale"] = val;
}

- (NSString*) messageTemplate
{
    return self.dictionary[@"messageTemplate"];
}

- (void) setMessageTemplate: (NSString*) val
{
    self.dictionary[@"messageTemplate"] = val;
}

- (NSString*) subject
{
    return self.dictionary[@"subject"];
}

- (void) setSubject: (NSString*) val
{
    self.dictionary[@"subject"] = val;
}


@end
