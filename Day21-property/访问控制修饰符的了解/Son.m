//
//  Son.m
//  访问控制修饰符的了解
//
//  Created by 李康 on 16/3/22.
//  Copyright © 2016年 李康. All rights reserved.
//

#import "Son.h"

@implementation Son
-(void)test
{
    self->_x = 100;
    self->_y = 200;
    Father *f = [Father new];
//    f->_z = 300;错误，private只能在类本身的方法中访问
}
@end
