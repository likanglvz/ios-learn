//
//  Dog.m
//  拥有三个对象型成员变量
//
//  Created by 李康 on 16/3/29.
//  Copyright © 2016年 李康. All rights reserved.
//

#import "Dog.h"

@implementation Dog
-(void)dealloc
{
    NSLog(@"dog没了");
    [super dealloc];
}
@end
