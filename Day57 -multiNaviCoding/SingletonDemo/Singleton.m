//
//  Singleton.m
//  SingletonDemo
//
//  Created by 李康 on 16/5/3.
//  Copyright © 2016年 李康. All rights reserved.
//

#import "Singleton.h"

static Singleton * _sharedInstance = nil;


@implementation Singleton

+(Singleton *)sharedInstance
{
//    if (!_sharedInstance) {//实例不存在时创建一个，存在直接返回
//        _sharedInstance = [[Singleton alloc]init];
//        
//    }
//    return _sharedInstance;

    static dispatch_once_t once;
    //block中的代码在app生命周期中，只执行一次
    dispatch_once(&once, ^{
        _sharedInstance = [[self alloc] init];
    });
    return _sharedInstance;

}


@end
