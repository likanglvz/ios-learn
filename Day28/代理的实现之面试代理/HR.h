//
//  HR.h
//  代理的实现之面试代理
//
//  Created by 李康 on 16/3/31.
//  Copyright © 2016年 李康. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InterView.h"
@interface HR : NSObject
/*定义属性，并要求被赋值的参数必须遵守面试协议*/
@property (nonatomic,weak)id <InterView>delegate;
-(void)interView;
@end
