// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphDirectory()
{
    NSArray* _administrativeUnits;
    NSArray* _deletedItems;
}
@end

@implementation MSGraphDirectory

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.directory";
    }
    return self;
}
- (NSArray*) administrativeUnits
{
    if(!_administrativeUnits){
        
    NSMutableArray *administrativeUnitsResult = [NSMutableArray array];
    NSArray *administrativeUnits = self.dictionary[@"administrativeUnits"];

    if ([administrativeUnits isKindOfClass:[NSArray class]]){
        for (id tempAdministrativeUnit in administrativeUnits){
            [administrativeUnitsResult addObject:tempAdministrativeUnit];
        }
    }

    _administrativeUnits = administrativeUnitsResult;
        
    }
    return _administrativeUnits;
}

- (void) setAdministrativeUnits: (NSArray*) val
{
    _administrativeUnits = val;
    self.dictionary[@"administrativeUnits"] = val;
}

- (NSArray*) deletedItems
{
    if(!_deletedItems){
        
    NSMutableArray *deletedItemsResult = [NSMutableArray array];
    NSArray *deletedItems = self.dictionary[@"deletedItems"];

    if ([deletedItems isKindOfClass:[NSArray class]]){
        for (id tempDirectoryObject in deletedItems){
            [deletedItemsResult addObject:tempDirectoryObject];
        }
    }

    _deletedItems = deletedItemsResult;
        
    }
    return _deletedItems;
}

- (void) setDeletedItems: (NSArray*) val
{
    _deletedItems = val;
    self.dictionary[@"deletedItems"] = val;
}


@end
