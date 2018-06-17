//
//  UIButton+State.m
//  duoduo
//
//  Created by ac hu on 2017/7/6.
//  Copyright © 2017年 Locke. All rights reserved.
//

#import "UIButton+State.h"
#import <objc/objc.h>
#import <objc/runtime.h>

@implementation UIButton(State)

-(void)setHighBackColor:(UIColor *)highBackColor{
    objc_setAssociatedObject(self, @"highBackColor", highBackColor, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self setImage:[self creatImageFromColor:highBackColor size:CGSizeMake(self.frame.size.width, self.frame.size.height)] forState:UIControlStateHighlighted];
}

-(UIColor *)highBackColor{
    return objc_getAssociatedObject(self, @"highBackColor");
}

-(void)setHighImage:(UIImage *)highImage{
    objc_setAssociatedObject(self, @"highImage", highImage, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self setImage:highImage forState:UIControlStateHighlighted];
}

-(UIImage *)highImage{
    return objc_getAssociatedObject(self, @"highImage");
}

-(void)setTextColor:(UIColor *)textColor{
    objc_setAssociatedObject(self, @"textColor", textColor, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self setTitleColor:textColor forState:UIControlStateNormal];
}

-(UIColor *)textColor{
    return objc_getAssociatedObject(self, @"textColor");
}

-(void)setTextHighColor:(UIColor *)textHighColor{
    objc_setAssociatedObject(self, @"textHighColor", textHighColor, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self setTitleColor:textHighColor forState:UIControlStateHighlighted];
}

-(UIColor *)textHighColor{
    return objc_getAssociatedObject(self, @"textHighColor");
}

-(void)setTitle:(NSString *)title{
    objc_setAssociatedObject(self, @"title", title, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self setTitle:title forState:UIControlStateNormal];
}

-(NSString *)title{
    return objc_getAssociatedObject(self, @"title");
}

-(void)setFont:(NSInteger)font{
    objc_setAssociatedObject(self, @"font", [NSString stringWithFormat:@"%d",(int)font], OBJC_ASSOCIATION_COPY_NONATOMIC);
    self.titleLabel.font = [UIFont systemFontOfSize:font];
}

-(NSInteger)font{
    return [objc_getAssociatedObject(self, @"font") integerValue];
}

//通过颜色来生成一个纯色图片
-(UIImage *)creatImageFromColor:(UIColor *)color size:(CGSize)size{
    
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}

@end
