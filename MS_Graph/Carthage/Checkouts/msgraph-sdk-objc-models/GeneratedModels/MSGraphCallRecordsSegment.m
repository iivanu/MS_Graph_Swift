// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphCallRecordsSegment()
{
    MSGraphCallRecordsEndpoint* _callee;
    MSGraphCallRecordsEndpoint* _caller;
    NSDate* _endDateTime;
    MSGraphCallRecordsFailureInfo* _failureInfo;
    NSArray* _media;
    NSDate* _startDateTime;
}
@end

@implementation MSGraphCallRecordsSegment

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.callRecords.segment";
    }
    return self;
}
- (MSGraphCallRecordsEndpoint*) callee
{
    if(!_callee){
        _callee = [[MSGraphCallRecordsEndpoint alloc] initWithDictionary: self.dictionary[@"callee"]];
    }
    return _callee;
}

- (void) setCallee: (MSGraphCallRecordsEndpoint*) val
{
    _callee = val;
    self.dictionary[@"callee"] = val;
}

- (MSGraphCallRecordsEndpoint*) caller
{
    if(!_caller){
        _caller = [[MSGraphCallRecordsEndpoint alloc] initWithDictionary: self.dictionary[@"caller"]];
    }
    return _caller;
}

- (void) setCaller: (MSGraphCallRecordsEndpoint*) val
{
    _caller = val;
    self.dictionary[@"caller"] = val;
}

- (NSDate*) endDateTime
{
    if(!_endDateTime){
        _endDateTime = [NSDate ms_dateFromString: self.dictionary[@"endDateTime"]];
    }
    return _endDateTime;
}

- (void) setEndDateTime: (NSDate*) val
{
    _endDateTime = val;
    self.dictionary[@"endDateTime"] = [val ms_toString];
}

- (MSGraphCallRecordsFailureInfo*) failureInfo
{
    if(!_failureInfo){
        _failureInfo = [[MSGraphCallRecordsFailureInfo alloc] initWithDictionary: self.dictionary[@"failureInfo"]];
    }
    return _failureInfo;
}

- (void) setFailureInfo: (MSGraphCallRecordsFailureInfo*) val
{
    _failureInfo = val;
    self.dictionary[@"failureInfo"] = val;
}

- (NSArray*) media
{
    if(!_media){
        
    NSMutableArray *mediaResult = [NSMutableArray array];
    NSArray *media = self.dictionary[@"media"];

    if ([media isKindOfClass:[NSArray class]]){
        for (id tempMedia in media){
            [mediaResult addObject:tempMedia];
        }
    }

    _media = mediaResult;
        
    }
    return _media;
}

- (void) setMedia: (NSArray*) val
{
    _media = val;
    self.dictionary[@"media"] = val;
}

- (NSDate*) startDateTime
{
    if(!_startDateTime){
        _startDateTime = [NSDate ms_dateFromString: self.dictionary[@"startDateTime"]];
    }
    return _startDateTime;
}

- (void) setStartDateTime: (NSDate*) val
{
    _startDateTime = val;
    self.dictionary[@"startDateTime"] = [val ms_toString];
}


@end
