// Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.



#import "NSDate+MSSerialization.h"

#import "MSGraphClientModels.h"

@interface MSObject()

@property (strong, nonatomic) NSMutableDictionary *dictionary;

@end

@interface MSGraphEducationStudent()
{
    MSDate* _birthDate;
    NSString* _externalId;
    MSGraphEducationGender* _gender;
    NSString* _grade;
    NSString* _graduationYear;
    NSString* _studentNumber;
}
@end

@implementation MSGraphEducationStudent

- (MSDate*) birthDate
{
    if(!_birthDate){
        _birthDate = [MSDate ms_dateFromString: self.dictionary[@"birthDate"]];
    }
    return _birthDate;
}

- (void) setBirthDate: (MSDate*) val
{
    _birthDate = val;
    self.dictionary[@"birthDate"] = [val ms_toString];
}

- (NSString*) externalId
{
    if([[NSNull null] isEqual:self.dictionary[@"externalId"]])
    {
        return nil;
    }   
    return self.dictionary[@"externalId"];
}

- (void) setExternalId: (NSString*) val
{
    self.dictionary[@"externalId"] = val;
}

- (MSGraphEducationGender*) gender
{
    if(!_gender){
        _gender = [self.dictionary[@"gender"] toMSGraphEducationGender];
    }
    return _gender;
}

- (void) setGender: (MSGraphEducationGender*) val
{
    _gender = val;
    self.dictionary[@"gender"] = val;
}

- (NSString*) grade
{
    if([[NSNull null] isEqual:self.dictionary[@"grade"]])
    {
        return nil;
    }   
    return self.dictionary[@"grade"];
}

- (void) setGrade: (NSString*) val
{
    self.dictionary[@"grade"] = val;
}

- (NSString*) graduationYear
{
    if([[NSNull null] isEqual:self.dictionary[@"graduationYear"]])
    {
        return nil;
    }   
    return self.dictionary[@"graduationYear"];
}

- (void) setGraduationYear: (NSString*) val
{
    self.dictionary[@"graduationYear"] = val;
}

- (NSString*) studentNumber
{
    if([[NSNull null] isEqual:self.dictionary[@"studentNumber"]])
    {
        return nil;
    }   
    return self.dictionary[@"studentNumber"];
}

- (void) setStudentNumber: (NSString*) val
{
    self.dictionary[@"studentNumber"] = val;
}

@end
