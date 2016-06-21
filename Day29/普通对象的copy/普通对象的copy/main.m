//
//  main.m
//  普通对象的copy
//
//  Created by 李康 on 16/4/1.
//  Copyright © 2016年 李康. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cat.h"
#import "Dog.h"
int main(int argc, const char * argv[]) {
    Dog *d = [Dog new];
    Cat *c1 = [Cat new];
    d.name = @"猫的情人";
    c1.age = 3;
    c1.name = @"小黄";
    c1.dog = d;
    
    Cat *c2 = [c1 copy];
    
    c1.name = @"小珊";
    c1.dog.name = @"小丽";
    
    NSLog(@"c2=%@",c2);
    
    return 0;
}
