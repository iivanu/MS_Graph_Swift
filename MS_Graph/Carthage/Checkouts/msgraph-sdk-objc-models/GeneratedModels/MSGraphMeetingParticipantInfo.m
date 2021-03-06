// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphMeetingParticipantInfo()
{
    MSGraphIdentitySet* _identity;
    MSGraphOnlineMeetingRole* _role;
    NSString* _upn;
}
@end

@implementation MSGraphMeetingParticipantInfo

- (MSGraphIdentitySet*) identity
{
    if(!_identity){
        _identity = [[MSGraphIdentitySet alloc] initWithDictionary: self.dictionary[@"identity"]];
    }
    return _identity;
}

- (void) setIdentity: (MSGraphIdentitySet*) val
{
    _identity = val;
    self.dictionary[@"identity"] = val;
}

- (MSGraphOnlineMeetingRole*) role
{
    if(!_role){
        _role = [self.dictionary[@"role"] toMSGraphOnlineMeetingRole];
    }
    return _role;
}

- (void) setRole: (MSGraphOnlineMeetingRole*) val
{
    _role = val;
    self.dictionary[@"role"] = val;
}

- (NSString*) upn
{
    if([[NSNull null] isEqual:self.dictionary[@"upn"]])
    {
        return nil;
    }   
    return self.dictionary[@"upn"];
}

- (void) setUpn: (NSString*) val
{
    self.dictionary[@"upn"] = val;
}

@end
