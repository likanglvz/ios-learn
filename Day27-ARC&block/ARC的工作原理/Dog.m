//
//  Dog.m
//  ARC的工作原理
//
//  Created by 李康 on 16/3/30.
//  Copyright © 2016年 李康. All rights reserved.
//

#import "Dog.h"

@implementation Dog
/*在arc环境中，不可以在dealloc方法中出现[super dealloc];*/
-(void)dealloc
{
    NSLog(@"dog没有了");
//    [super dealloc];错误
}
-(NSString *)description
{
    return @"这是dog的description方法";
}
@end
