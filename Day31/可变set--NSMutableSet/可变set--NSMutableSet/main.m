//
//  main.m
//  可变set--NSMutableSet
//
//  Created by 李康 on 16/4/6.
//  Copyright © 2016年 李康. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSSet+ShowStu.h"
int main(int argc, const char * argv[]) {
    NSMutableSet *set1 = [NSMutableSet setWithObjects:@1,@2,@3,@4, nil];
    NSMutableSet *set2 = [NSMutableSet setWithObjects:@2,@3, nil];
    if ([set1 isEqualToSet:set2]) {
        
    }else{
        NSLog(@"set1!=set2");
    }
    NSNumber *n1 = [NSNumber numberWithInt:2];
    /*判断一个集合中是否存在某个元素*/
    if ([set1 containsObject:n1]) {
        NSLog(@"存在n1");
    }
    [set1 addObject:@5];
    [set1 removeObject:@5];
//    [set1 show];
    NSLog(@"%@",set1);
    [set1 show];
    return 0;
}
