//
//  UIImage+image.m
//  02runtime交换方法
//
//  Created by coderXu on 16/12/5.
//  Copyright © 2016年 coderXu. All rights reserved.
//

#import "UIImage+image.h"
#import <objc/message.h>
@implementation UIImage (image)

//加载分类的时候调用

+ (void)load
{
    NSLog(@"%s",__func__);
    
    // 1.表示获取方法实现
    //class_getMethodImplementation(<#__unsafe_unretained Class cls#>, <#SEL name#>)
    // 2.获取对象
    //  class_getInstanceMethod(<#__unsafe_unretained Class cls#>, <#SEL name#>)
    // 3.获取类方法
    //        class_getClassMethod(<#__unsafe_unretained Class cls#>, <#SEL name#>)
    // IMP:方法实现
    
    
    /**
     class:获取哪个类的方法
     sel:获取方法编号，根据sel去找相应的类方法
     */
    Method imageNameMethod =  class_getClassMethod([UIImage class], @selector(imageNamed:));
    
    Method xz_imageNameMethod = class_getClassMethod([UIImage class], @selector(xz_imageName:));
    
    
    // 交换方法实现
    method_exchangeImplementations(imageNameMethod, xz_imageNameMethod);
}


// 运行时
+ (UIImage *)xz_imageName:(NSString *)imageName
{
    // 1.加载图片
    UIImage *image = [UIImage xz_imageName:imageName];
    
    // 2.判断功能
    if (image == nil) {
        NSLog(@"%@图片为空",imageName);
    }
    
    return image;
    
}




@end
