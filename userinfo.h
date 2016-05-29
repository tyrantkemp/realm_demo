//
//  userinfo.h
//  realm_demo
//
//  Created by 肖准 on 5/29/16.
//  Copyright © 2016 肖准. All rights reserved.
//

#import <Realm/Realm.h>

@interface userinfo : RLMObject
@property NSString* userId;
@property NSString * userName ;



@end

// This protocol enables typed collections. i.e.:
// RLMArray<userinfo>
RLM_ARRAY_TYPE(userinfo)
