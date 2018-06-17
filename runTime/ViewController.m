//
//  ViewController.m
//  runTime
//
//  Created by ac hu on 2018/6/17.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *per = [Person new];
    //模拟消息转发机制
    //1.动态方法解析
    //2.找备用接收者
    //3.1方法签名 3.2消息转发
    //4消息最终没有处理
    [per sendMessage:@"dd"];
    
    //模拟避免循环引用
    
    //模拟多继承
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
