//
//  Student.m
//  description方法的使用
//
//  Created by 李康 on 16/3/28.
//  Copyright © 2016年 李康. All rights reserved.
//

#import "Student.h"

@implementation Student
-(NSString*)description
{
    NSString *s = [NSString stringWithFormat:@"stu的name=%@,age=%d",_name,_age];
    return s;
}
+(NSString*)description
{
    return @"这是student的类方法";
}

-(id)initWithName:(NSString*)name andWithAge:(int)age
{
    if (self=[super init]) {
        _name = name;
        _age = age;
    }
    return self;
}
@end
