//
//  Animal.h
//  自动释放对象的产生
//
//  Created by 李康 on 16/3/29.
//  Copyright © 2016年 李康. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject
@property (assign,nonatomic)int age;
+(id)animal;
+(id)animalWithAge:(int)age;
@end
