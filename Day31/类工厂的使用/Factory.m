//
//  Factory.m
//  类工厂的使用
//
//  Created by 李康 on 16/4/6.
//  Copyright © 2016年 李康. All rights reserved.
//

#import "Factory.h"
#import "Shape.h"
#import "Line.h"
@implementation Factory
/*约束返回对象的类型必须遵守某个协议*/
+(id<Shape>)getShape:(NSString*)shapeName
{
    static NSMutableDictionary *dic = nil;
    if (dic==nil) {
        dic = [NSMutableDictionary new];
    }
    
    Class c = nil;
    c = dic[shapeName];
    if(!c){
        c = NSClassFromString(shapeName);
        dic[shapeName] = c;
    }
    
    id obj = [[c alloc]initWithName:shapeName];
    
    if ([obj conformsToProtocol:@protocol(Shape) ]) {
        [obj draw];
    }
    return obj;
}
@end
