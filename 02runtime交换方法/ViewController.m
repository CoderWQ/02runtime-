//
//  ViewController.m
//  02runtime交换方法
//
//  Created by coderXu on 16/12/5.
//  Copyright © 2016年 coderXu. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+image.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIImage *image = [UIImage imageNamed:@"coderXu"];
    // imageName加载图片，并不知道图片是否加载成功
    
    // 以后调用的时候，可以知道图片是否加载成功--搞分类，子类
    
    // 1.加分类
//   UIImage *imageOne = [UIImage xz_imageName:@"coder"];
    
    // 2.imageName：
    // 实现方法：底层调用xz_imageName
    // 似的只要调用imageName就调用xz_imageName;
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
