//
//  B.m
//  类方法之load和initialize用法
//
//  Created by 李康 on 16/3/28.
//  Copyright © 2016年 李康. All rights reserved.
//

#import "B.h"

@implementation B
+(void)load{
    NSLog(@"子类B的load方法");
}
+(void)initialize
{
    NSLog(@"子类B的initialize方法被调用了");
}
+(void)test{
    NSLog(@"B子类的test");
}
@end
