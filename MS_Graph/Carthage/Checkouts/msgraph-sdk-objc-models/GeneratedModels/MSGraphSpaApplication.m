// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphSpaApplication()
{
    NSArray* _redirectUris;
}
@end

@implementation MSGraphSpaApplication

- (NSArray*) redirectUris
{
    return self.dictionary[@"redirectUris"];
}

- (void) setRedirectUris: (NSArray*) val
{
    self.dictionary[@"redirectUris"] = val;
}

@end
