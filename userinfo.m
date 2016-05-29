//
//  userinfo.m
//  realm_demo
//
//  Created by 肖准 on 5/29/16.
//  Copyright © 2016 肖准. All rights reserved.
//

#import "userinfo.h"

@implementation userinfo

// Specify default values for properties

//+ (NSDictionary *)defaultPropertyValues
//{
//    return @{};
//}

// Specify properties to ignore (Realm won't persist these)

//+ (NSArray *)ignoredProperties
//{
//    return @[];
//}

+ (NSDictionary *)JSONInboundMappingDictionary {
    return @{
             @"name": @"userName",
             @"id": @"userId"
             };
}

+(NSString*)primaryKey{
    return @"userId";
}
@end
