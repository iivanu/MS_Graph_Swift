// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "MSGraphCallRecordsFailureStage.h"


#import "MSObject.h"

@interface MSGraphCallRecordsFailureInfo : MSObject

@property (nullable, nonatomic, setter=setReason:, getter=reason) NSString* reason;
@property (nonnull, nonatomic, setter=setStage:, getter=stage) MSGraphCallRecordsFailureStage* stage;

@end
