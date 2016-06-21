//
//  main.m
//  非arc下字符串的内存问题
//
//  Created by 李康 on 16/3/30.
//  Copyright © 2016年 李康. All rights reserved.
//
///Users/apple/Desktop/1 2.txt
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSError *err;
        NSStringEncoding a = 0;
        NSString *s1 = [[NSString alloc]initWithContentsOfFile:@"/Users/apple/Desktop/1 2.txt" usedEncoding:&a error:&err];
        NSString *s2 = [[NSString alloc]initWithContentsOfFile:@"/Users/apple/Desktop/1 21.txt" usedEncoding:&a error:&err];
        /*一般情况下，字符串内容相同，其地址也相同*/

        NSLog(@"s1 = %@,a = %lu,s11==s12?%d",s1,a,s1==s2);
        
        NSString *src = @"如果开心你就拍拍手";
        unichar arr[100] = {0};
        [src getCharacters:arr];
        
        NSString *s3 = [[NSString alloc]initWithCharacters:arr length:3];
        NSString *s4 = [[NSString alloc]initWithCharacters:arr length:3];
        NSLog(@"s3==s4?%d",s3==s4);
        
        
    }
    return 0;
}
