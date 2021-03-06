//
//  Circle.h
//  作业－点和圆
//
//  Created by 李康 on 16/3/22.
//  Copyright © 2016年 李康. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Point2D.h"
@interface Circle : NSObject
{
    double _radius;//半径
    Point2D *_point;
}
-(void)setRadius:(double)radius;
-(double)radius;

-(void)setPoint:(Point2D*)point;
-(Point2D*)point;

    //跟其他圆是否相交
-(BOOL)isIntersectWithOther:(Circle*)other;
+(BOOL)isIntersectBetweenCircle:(Circle*)circle1 andCircle2:(Circle*)circle2;
@end
