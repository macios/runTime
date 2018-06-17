//
//  ViewController.m
//  runTime
//
//  Created by ac hu on 2018/6/17.
//  Copyright © 2018年 ac hu. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Job.h"
#import "AutoCode.h"
#import "UIButton+State.h"

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
    
    //利用消息转发模拟多继承
    Job *job = [Job new];
    [job buyApple];
    [job buyWater];
    
    //消息拦截/交换
    [self.view setBackgroundColor:[UIColor blackColor]];
    
    //拓展已有类的属性<这里做了个伪属性>
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(20, 60, 100, 30);
    btn.title = @"小明";
    btn.highBackColor = [UIColor redColor];
    btn.textColor = [UIColor whiteColor];
    btn.font = 16.f;
    [self.view addSubview:btn];
    NSLog(@"%f",btn.font);
    
    //自动化归解档
    AutoCode *code = [AutoCode new];
    code.name = @"xiaoHong";
    
    NSString *path = [NSString stringWithFormat:@"%@/auto.plist",NSHomeDirectory()];
    [NSKeyedArchiver archiveRootObject:code toFile:path];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
