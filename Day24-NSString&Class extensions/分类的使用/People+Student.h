//
//  People+Student.h
//  分类的使用
//
//  Created by 李康 on 16/3/25.
//  Copyright © 2016年 李康. All rights reserved.
//

#import "People.h"

@interface People (Student)
//{
//    int _height;
//}
@property int height;
-(void)setHeight:(int)height;
-(int)height;
-(void)show;
-(void)test;
-(void)privateMethed;
@end
