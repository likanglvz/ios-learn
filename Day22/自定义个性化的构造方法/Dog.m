//
//  Dog.m
//  自定义个性化的构造方法
//
//  Created by 李康 on 16/3/23.
//  Copyright © 2016年 李康. All rights reserved.
//

#import "Dog.h"

@implementation Dog
-(id)init
{
    if (self=[super init]) {
        _name = @"旺财";
        _age = 1;
    }
    return self;
}
/*不可在普通方法中给self赋值，只有在init开头的方法中才可以给selef赋值*/
//-(id)ini
//{
//    if (self=[super init]) {
//        _name = @"旺财";
//        _age = 1;
//    }
//    return self;
//}

-(id)initWithName:(NSString*)name
{
    if (self = [super init]) {
        _name = name;
        _age = 2;
    }
    return self;
}
#if 0
-(id)initWithName:(NSString *)name andAge:(int)age
{
    if (self = [super init]) {
        _age = age;
        _name = name;
    }
    return self;
}
#else
-(id)initWithName:(NSString *)name andAge:(int)age
{
    if (self = [self initWithName:name]) {
        _age = age;
    }
    return self;
}

#endif
-(void)show
{
    self.age = 2;
    
    NSLog(@"name=%@,age=%d",_name,self.age);
}
@end
