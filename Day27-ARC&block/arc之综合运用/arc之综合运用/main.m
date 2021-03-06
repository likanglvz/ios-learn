//
//  main.m
//  arc之综合运用
//
//  Created by 李康 on 16/3/30.
//  Copyright © 2016年 李康. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Girl.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         Cat *c0 = [Cat new];
         c0 = nil;
         
         */
//        [[Cat alloc]init];在非arc下会内存泄露，在arc下该对象产生出来后没办法使用
        
        Girl *girl = [Girl new];
//        girl.boyName1 = @"刘德华";
//        girl.boyName1 = [[NSString alloc]initWithUTF8String:"刘德华"];
        girl.boyName1 = [[NSString alloc]initWithFormat:@"刘德华"];
        girl.boyName2 = girl.boyName1;
        girl.boyName1 = nil;
        
        NSLog(@"%@",girl.boyName2);
        
        /*产生猫*/
        girl.cat1 = [[Cat alloc]init];
        
        girl.cat1.catId = 29;
        
        girl.cat2 = girl.cat1;
        
        girl.cat3 = girl.cat1;
        
        girl.cat1 = nil;
        
        NSLog(@"cat2.id=%d,cat2==nil?%d",girl.cat2.catId,girl.cat2==nil);
        
//        NSLog(@"cat3.id=%d",girl.cat3.catId);
        
        Girl *girl2 = [Girl new];
        __weak Girl *girl3 = girl2;
        
        __unsafe_unretained Girl *girl4 = girl2;
        girl2 = nil;
        NSLog(@"girl3==nil?%d,girl4==nil?%d",girl3==nil,girl4==nil);
        
    }
    return 0;
}
