//
//  UIView+JCFrameLayout.m
//  JCFrameLayout
//
//  Created by abc on 17/3/27.
//  Copyright © 2017年 jackcat. All rights reserved.
//

#import "UIView+JCFrameLayout.h"

@implementation UIView (JCFrameLayout)

- (void)jc_makeLayout:(void (^)(JCFrameMake *))block{
    //创建Frame构建器
    JCFrameMake *make = [[JCFrameMake alloc]initWithView:self];
    //生成frame
    block(make);
    //执行布局
    [make executeLayout];
}

@end
