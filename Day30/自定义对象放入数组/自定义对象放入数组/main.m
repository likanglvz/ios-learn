//
//  main.m
//  自定义对象放入数组
//
//  Created by 李康 on 16/4/5.
//  Copyright © 2016年 李康. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[]) {
    NSMutableArray *arr = [NSMutableArray new];
    Student *s1 = [Student studentWithName:@"三丰" andWithAge:3];
    Student *s2 = [Student studentWithName:@"三丰" andWithAge:3];
    Student *s3 = [Student studentWithName:@"四丰" andWithAge:33];
    
    Student *s4 = [Student studentWithName:@"五丰" andWithAge:32];
    
    [arr addObject:s1];[arr addObject:s2];[arr addObject:s3];[arr addObject:s4];
    
//    [arr removeObject:s2];
    [arr removeObject:[Student studentWithName:@"三丰" andWithAge:3]];
    /*
     removeObject:(id)s
     {
     
        NSMutableArr *a = self;
        for(int i = 0;i<a.count;i++){
            if ([s isEqual:a[i]]){
                [a removeObjectAtIndex:i];
            }
        }
     
     }
     
     */
    
    for (int i = 0; i<arr.count; i++) {
        NSLog(@"%@",arr[i]);
    }
        return 0;
}
