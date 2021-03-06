// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphChat()
{
    MSGraphChatType* _chatType;
    NSDate* _createdDateTime;
    NSDate* _lastUpdatedDateTime;
    NSString* _topic;
    NSArray* _installedApps;
    NSArray* _members;
    NSArray* _messages;
    NSArray* _tabs;
}
@end

@implementation MSGraphChat

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.chat";
    }
    return self;
}
- (MSGraphChatType*) chatType
{
    if(!_chatType){
        _chatType = [self.dictionary[@"chatType"] toMSGraphChatType];
    }
    return _chatType;
}

- (void) setChatType: (MSGraphChatType*) val
{
    _chatType = val;
    self.dictionary[@"chatType"] = val;
}

- (NSDate*) createdDateTime
{
    if(!_createdDateTime){
        _createdDateTime = [NSDate ms_dateFromString: self.dictionary[@"createdDateTime"]];
    }
    return _createdDateTime;
}

- (void) setCreatedDateTime: (NSDate*) val
{
    _createdDateTime = val;
    self.dictionary[@"createdDateTime"] = [val ms_toString];
}

- (NSDate*) lastUpdatedDateTime
{
    if(!_lastUpdatedDateTime){
        _lastUpdatedDateTime = [NSDate ms_dateFromString: self.dictionary[@"lastUpdatedDateTime"]];
    }
    return _lastUpdatedDateTime;
}

- (void) setLastUpdatedDateTime: (NSDate*) val
{
    _lastUpdatedDateTime = val;
    self.dictionary[@"lastUpdatedDateTime"] = [val ms_toString];
}

- (NSString*) topic
{
    if([[NSNull null] isEqual:self.dictionary[@"topic"]])
    {
        return nil;
    }   
    return self.dictionary[@"topic"];
}

- (void) setTopic: (NSString*) val
{
    self.dictionary[@"topic"] = val;
}

- (NSArray*) installedApps
{
    if(!_installedApps){
        
    NSMutableArray *installedAppsResult = [NSMutableArray array];
    NSArray *installedApps = self.dictionary[@"installedApps"];

    if ([installedApps isKindOfClass:[NSArray class]]){
        for (id tempTeamsAppInstallation in installedApps){
            [installedAppsResult addObject:tempTeamsAppInstallation];
        }
    }

    _installedApps = installedAppsResult;
        
    }
    return _installedApps;
}

- (void) setInstalledApps: (NSArray*) val
{
    _installedApps = val;
    self.dictionary[@"installedApps"] = val;
}

- (NSArray*) members
{
    if(!_members){
        
    NSMutableArray *membersResult = [NSMutableArray array];
    NSArray *members = self.dictionary[@"members"];

    if ([members isKindOfClass:[NSArray class]]){
        for (id tempConversationMember in members){
            [membersResult addObject:tempConversationMember];
        }
    }

    _members = membersResult;
        
    }
    return _members;
}

- (void) setMembers: (NSArray*) val
{
    _members = val;
    self.dictionary[@"members"] = val;
}

- (NSArray*) messages
{
    if(!_messages){
        
    NSMutableArray *messagesResult = [NSMutableArray array];
    NSArray *messages = self.dictionary[@"messages"];

    if ([messages isKindOfClass:[NSArray class]]){
        for (id tempChatMessage in messages){
            [messagesResult addObject:tempChatMessage];
        }
    }

    _messages = messagesResult;
        
    }
    return _messages;
}

- (void) setMessages: (NSArray*) val
{
    _messages = val;
    self.dictionary[@"messages"] = val;
}

- (NSArray*) tabs
{
    if(!_tabs){
        
    NSMutableArray *tabsResult = [NSMutableArray array];
    NSArray *tabs = self.dictionary[@"tabs"];

    if ([tabs isKindOfClass:[NSArray class]]){
        for (id tempTeamsTab in tabs){
            [tabsResult addObject:tempTeamsTab];
        }
    }

    _tabs = tabsResult;
        
    }
    return _tabs;
}

- (void) setTabs: (NSArray*) val
{
    _tabs = val;
    self.dictionary[@"tabs"] = val;
}


@end
