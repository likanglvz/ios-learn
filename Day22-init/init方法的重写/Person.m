//
//  Person.m
//  init方法的重写
//
//  Created by 李康 on 16/3/23.
//  Copyright © 2016年 李康. All rights reserved.
//

#import "Person.h"

@implementation Person
-(instancetype)init
{
    /*空对象用nil表示，0，NULL,*/
    if(self=[super init]){
        _age = 5;
        
    }
    return self;
}
@end
