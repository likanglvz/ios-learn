//
//  Car.m
//  自动义异常
//
//  Created by 李康 on 16/3/31.
//  Copyright © 2016年 李康. All rights reserved.
//

#import "Car.h"

@implementation Car
-(void)setNum:(int)num
{
    if (num<0) {
        /*抛出异常对象*/
        NSException *ex = [NSException exceptionWithName:@"人太少" reason:@"num参数不能小于0" userInfo:nil];
        @throw ex;//此处必须带参数
    }else if (num>10){
        [NSException raise:@"人数超载" format:@"人数%d太多了",num];
        NSLog(@"xxxxxxxxxx");
    }
}
@end
