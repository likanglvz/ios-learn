//
//  Car.h
//  属性的使用
//
//  Created by 李康 on 16/3/22.
//  Copyright © 2016年 李康. All rights reserved.
//

#import <Foundation/Foundation.h>
/*如果没有定义成员变量，则自动产生的成员变量是私有的 private*/
@interface Car : NSObject
@property int speed;
@property int wheels;
-(void)test;
@end
