//
//  Line.h
//  类工厂的使用
//
//  Created by 李康 on 16/4/6.
//  Copyright © 2016年 李康. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"
@interface Line : NSObject<Shape>
@property (nonatomic,copy)NSString*name;
@end
