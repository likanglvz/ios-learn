//
//  main.m
//  循环引用引发的问题
//
//  Created by 李康 on 16/3/29.
//  Copyright © 2016年 李康. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Car *car = [Car new];//1
        Person *p = [Person new];//1
        
        p.car = car;//p=1,car = 1;
        car.master = p;//p = 2,car = 1;
        
        [p release];//p = 1;car = 1;
        [car release];//car=0, p=0
        
    }
    return 0;
}
