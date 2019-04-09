//
//  popView.m
//  xibDemo
//
//  Created by 洪清 on 2019/1/25.
//  Copyright © 2019 洪清. All rights reserved.
//

#import "popView.h"

@implementation popView
+(instancetype)initPopView
{
    popView *view = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
    return view;
}

@end
