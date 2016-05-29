//
//  ViewController.m
//  realm_demo
//
//  Created by 肖准 on 5/29/16.
//  Copyright © 2016 肖准. All rights reserved.
//

#import "ViewController.h"

#import "userinfo.h"

#import <Realm/Realm.h>
#import <Realm+JSON/RLMObject+JSON.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@",[[RLMRealm defaultRealm] path]);

    
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];

   userinfo* res= [userinfo createOrUpdateInRealm:realm withJSONDictionary:@{@"id":@"1",@"name":@"tyrant"}];
    [realm commitWriteTransaction];
    
    NSLog(@"%@",res);
    
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
