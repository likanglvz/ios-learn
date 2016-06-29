//
//  Student.m
//  NSSet的实现原理－－hash算法
//
//  Created by 李康 on 16/4/6.
//  Copyright © 2016年 李康. All rights reserved.
//

#import "Student.h"

@implementation Student
+(Student*)studentWithName:(NSString*)name andWithId:(int)sid
{
    Student *s = [[self alloc]init];
    s.sid = sid;
    s.name = name;
    return s;
}
-(NSUInteger)hash
{
    /*要求返回值为学号加名字长度*/
   return  _sid+_name.length;
    
    
}
-(BOOL)isEqual:(id)object
{
    /*要求比较name和学号*/
    if ([_name isEqualToString:[object name]]&&(_sid==[object sid])) {
        return YES;
    }
    return NO;
}
-(NSString*)description
{
    return [NSString stringWithFormat:@"name=%@,sid=%d",_name,_sid];
}
@end
