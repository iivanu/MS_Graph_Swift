// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphAuditLogRoot()
{
    NSArray* _directoryAudits;
    NSArray* _provisioning;
    NSArray* _restrictedSignIns;
    NSArray* _signIns;
}
@end

@implementation MSGraphAuditLogRoot

- (id) init
{
    if (self = [super init]) {
        self.oDataType = @"#microsoft.graph.auditLogRoot";
    }
    return self;
}
- (NSArray*) directoryAudits
{
    if(!_directoryAudits){
        
    NSMutableArray *directoryAuditsResult = [NSMutableArray array];
    NSArray *directoryAudits = self.dictionary[@"directoryAudits"];

    if ([directoryAudits isKindOfClass:[NSArray class]]){
        for (id tempDirectoryAudit in directoryAudits){
            [directoryAuditsResult addObject:tempDirectoryAudit];
        }
    }

    _directoryAudits = directoryAuditsResult;
        
    }
    return _directoryAudits;
}

- (void) setDirectoryAudits: (NSArray*) val
{
    _directoryAudits = val;
    self.dictionary[@"directoryAudits"] = val;
}

- (NSArray*) provisioning
{
    if(!_provisioning){
        
    NSMutableArray *provisioningResult = [NSMutableArray array];
    NSArray *provisioning = self.dictionary[@"provisioning"];

    if ([provisioning isKindOfClass:[NSArray class]]){
        for (id tempProvisioningObjectSummary in provisioning){
            [provisioningResult addObject:tempProvisioningObjectSummary];
        }
    }

    _provisioning = provisioningResult;
        
    }
    return _provisioning;
}

- (void) setProvisioning: (NSArray*) val
{
    _provisioning = val;
    self.dictionary[@"provisioning"] = val;
}

- (NSArray*) restrictedSignIns
{
    if(!_restrictedSignIns){
        
    NSMutableArray *restrictedSignInsResult = [NSMutableArray array];
    NSArray *restrictedSignIns = self.dictionary[@"restrictedSignIns"];

    if ([restrictedSignIns isKindOfClass:[NSArray class]]){
        for (id tempRestrictedSignIn in restrictedSignIns){
            [restrictedSignInsResult addObject:tempRestrictedSignIn];
        }
    }

    _restrictedSignIns = restrictedSignInsResult;
        
    }
    return _restrictedSignIns;
}

- (void) setRestrictedSignIns: (NSArray*) val
{
    _restrictedSignIns = val;
    self.dictionary[@"restrictedSignIns"] = val;
}

- (NSArray*) signIns
{
    if(!_signIns){
        
    NSMutableArray *signInsResult = [NSMutableArray array];
    NSArray *signIns = self.dictionary[@"signIns"];

    if ([signIns isKindOfClass:[NSArray class]]){
        for (id tempSignIn in signIns){
            [signInsResult addObject:tempSignIn];
        }
    }

    _signIns = signInsResult;
        
    }
    return _signIns;
}

- (void) setSignIns: (NSArray*) val
{
    _signIns = val;
    self.dictionary[@"signIns"] = val;
}


@end
