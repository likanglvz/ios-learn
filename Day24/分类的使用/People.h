//
//  People.h
//  分类的使用
//
//  Created by 李康 on 16/3/25.
//  Copyright © 2016年 李康. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface People : NSObject
{
    @private
    NSString *_name;
    int _height;
}
@property NSString *name;
@property int age;
-(void)test;

@end
