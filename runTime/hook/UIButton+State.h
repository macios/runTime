//
//  UIButton+State.h
//  duoduo
//
//  Created by ac hu on 2017/7/6.
//  Copyright © 2017年 Locke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton(State)
@property(nonatomic,strong)UIColor *highBackColor;
@property(nonatomic,strong)UIImage *highImage;
@property(nonatomic,strong)UIColor *textColor;
@property(nonatomic,strong)UIColor *textHighColor;
@property(nonatomic,copy)NSString *title;
@property(nonatomic,assign)NSInteger font;
@end
