//
//  main.m
//  字符串的分类实现
//
//  Created by 李康 on 16/3/25.
//  Copyright © 2016年 李康. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+CountNumber.h"
int main(int argc, const char * argv[]) {
    NSString *s = @"http://dad239afdfd0";
    NSLog(@"%@中数字个数为：%d",s,[NSString countInString:s]);
    NSLog(@"%@中数字个数为：%d",s,[s countInCurrentString]);
    NSLog(@"是url地址？%d",[s isURL]);
    return 0;
}
