//
//  Person.h
//  id类型数据的使用
//
//  Created by 李康 on 16/3/22.
//  Copyright © 2016年 李康. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property int age;
/*此处的id可以看作是"NSObject *" */
@property id obj;

@end
