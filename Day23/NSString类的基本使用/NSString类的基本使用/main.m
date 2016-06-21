//
//  main.m
//  NSString类的基本使用
//
//  Created by 李康 on 16/3/24.
//  Copyright © 2016年 李康. All rights reserved.
//

#import <Foundation/Foundation.h>
int main(int argc, const char * argv[])
{
    NSString *s0 = @"abc中e";
    /*返回的是字符串的字符个数*/
    NSLog(@"s0的长度为%ld",s0.length);
    /*字符串截取*/
    NSLog(@"s0的前三个字符为%@",[s0 substringToIndex:4]);
    NSLog(@"s0的前三个字符之后的字符串为:%@",[s0 substringFromIndex:3]);
    NSRange r = {1,3};
    NSLog(@"s0在range范围内的字符串为：%@",[s0 substringWithRange:r]);
    /*取出字符串中的某个下标处的字符,如果是非ascii字符，则用%C表示，ascii码用%c*/
    NSLog(@"s0的下标为3处的字符为:%C",[s0 characterAtIndex:3]);
    /*getCharacters:(unichar *)buffer range:(NSRange)range*/
    unichar b[10] = {0};
    [s0 getCharacters:b range:r];
    for (int i = 0; i<10; i++) {
        NSLog(@"%C",b[i]);
    }
    
    NSString *s1 = @"how ar e you";
    NSLog(@"首字符被大写后的字符串为%@",[s1 capitalizedString]);
    const char *c = s1.UTF8String;
    NSLog(@"c=%s",c);
    NSString *s10 = @"a11";
    NSString *s11 = @"a1";
    NSLog(@"比较差是%ld",(long)[s10 compare:s11]);
}


int test1(int argc, const char * argv[])
{
        //比较两个字符串大小
    NSString *s0 = @"a2aaa";
    NSString *s1 = @"a10a0";
    NSLog(@"比较差是%ld",(long)[s0 compare:s1]);
    if ([s0 compare:s1]==NSOrderedAscending) {
        NSLog(@"s0<s1");
    }else if ([s0 compare:s1]==NSOrderedSame){
        NSLog(@"s0==s1");
    }else if([s0 compare:s1]==NSOrderedDescending){
        NSLog(@"s0>s1");
    }
    /*
     - (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOpt-p0;p0.-;ions)mask
     此处参数是一个掩位码，nscaseInsensitiveSearch不区分大小写字符
     NSLiteralSearch:进行完全比较
     NSNumbericSearch:比较字符串的字符个数，而不是字符串值
     */
    if ([s0 compare:s1 options:NSCaseInsensitiveSearch|NSNumericSearch]==NSOrderedSame) {
        NSLog(@"s0==s1");
    }else if ([s0 compare:s1 options:NSCaseInsensitiveSearch|NSNumericSearch]==NSOrderedDescending){
        NSLog(@"s0>s1");
    }else{
        NSLog(@"s0<s1");
    }
    return 0;
}
int test(int argc, const char * argv[]) {
    NSString *s0 = @"北京";
    /*s0与s1的产生方式是相同的，边地址都一样，存放在栈内存中*/
//    NSString *s1 = [NSString stringWithString:@"北京"];
    NSString *s1 = @"北京";
    NSLog(@"s0==s1?%d",s0==s1);
    
    /*下面的s2和s3内容一样，但地址不一样，其存储空间的堆空间*/
    NSString *s2 = [NSString stringWithFormat:@"中国首都是%@,%@",s0,s1];
    NSString *s3 = [NSString stringWithFormat:@"中国首都是%@,%@",s0,s1];
    NSLog(@"s2=s3?%d",s2==s3);
    
    NSString *s4 = [NSString stringWithFormat:@"Englisth name=%s,中文名字为：%@,age=%d,height=%f","itany",@"中国",23,189.0];
    NSLog(@"s4=%@",s4);
    
    /*两个字符串追加*/
    NSString *s5 = [s0 stringByAppendingString:s1];
//    s5 = [NSString stringWithFormat:@"%@%@",s0,s1];
    NSLog(@"%@",s5);
    
//    int i = 100;
//    char *c = "china";
//    NSString *tmp = @"临时字符串";
//    
//    NSString *s6 = [tmp stringByAppendingFormat:@"i=%d,c=%s,tmp=%@",i,c,tmp];
//    NSLog(@"s6=%@",s6);
//    NSLog(@"s6==s5?%d",[s6 isEqualToString:s5]);
//    
//    /*判断s2是否是以中为开头*/
//    if ([s2 hasPrefix:@"中国"]) {
//        NSLog(@"s2是以中为开头的");
//    }
//    /*判断某个字符串是以参数为结尾*/
//    if ([s2 hasSuffix:@"北京"]) {
//        NSLog(@"s2的最后以是北京为结尾的");
//    }
//    
//    NSString *s7 = @"34";
//    NSString *s9 = s7;
//    int a7 = s7.intValue;
//    NSLog(@"a7=%d",a7);
//    
//    int a8 = 56;
//    NSString *s10 = [NSString stringWithFormat:@"%d",a8];
//    NSLog(@"把数字转为字符串为%@",s10);
//    
//    NSString *s8 = @"abcEFG123你好";
//    NSLog(@"转为大写%@",s8.uppercaseString);
//    NSLog(@"转为小写为%@",s8.lowercaseString);
//    s7 = [s7 stringByAppendingString:s8];
//    NSLog(@"s7=%@,s9=%@",s7,s9);
    return 0;
}
