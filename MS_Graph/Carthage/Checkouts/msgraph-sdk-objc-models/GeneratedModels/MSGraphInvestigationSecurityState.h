// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.





#import "MSObject.h"

@interface MSGraphInvestigationSecurityState : MSObject

@property (nullable, nonatomic, setter=setName:, getter=name) NSString* name;
@property (nullable, nonatomic, setter=setStatus:, getter=status) NSString* status;

@end
