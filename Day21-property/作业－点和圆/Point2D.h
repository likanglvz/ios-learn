//
//  Point2D.h
//  作业－点和圆
//
//  Created by 李康 on 16/3/22.
//  Copyright © 2016年 李康. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Point2D : NSObject
{
    
    double _x;
    double _y;
}
-(void)setX:(double)x;
-(double)x;
-(void)setY:(double)y;
-(double)y;
/*同时设置x和y*/
-(void)setX:(double)x andWithY:(double)y;
/*计算两个点距离*/
+(double)distanceBetweenPoint1:(Point2D*)p1 andWithPoint2:(Point2D*)p2;
-(double)distanceWithOther:(Point2D*)other;
@end
