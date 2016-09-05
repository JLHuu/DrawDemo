//
//  ViewController.m
//  DrawDemo
//
//  Created by knmk0002 on 16/3/21.
//  Copyright © 2016年 knmk0002. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)next:(UIBarButtonItem *)sender;
- (IBAction)last:(UIBarButtonItem *)sender;

@end

@implementation ViewController
{
    UIImageView *_imageview;
    NSInteger _num;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _imageview = [[UIImageView alloc] init];
    [self.view addSubview:_imageview];

}

- (UIImage *)drawImage1
{
    UIImage *img = [UIImage imageNamed:@"11"];
    CGSize sz = img.size;
    UIGraphicsBeginImageContext(CGSizeMake(sz.width *2, sz.height*2));// 创建图形上下文
    [img drawAtPoint:CGPointZero];
    [img drawAtPoint:CGPointMake(sz.width, sz.height)];
    //得到当前图形上下文的图像
    UIImage *im = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();//关闭图形上下文
    return im;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)next:(UIBarButtonItem *)sender {
    UIImage *im = nil;
    _num ++;
    _num = _num > 5 ? 5 : _num;
    switch (_num) {
            case 1:
            im = [self drawImage1];
            break;
            case 2:
            
            break;
        default:
            break;
    }
    _imageview.image = im;
    [_imageview setFrame:CGRectMake(0, 0, im.size.width, im.size.height)];
    _imageview.center = self.view.center;
}

- (IBAction)last:(UIBarButtonItem *)sender {
    UIImage *im = nil;
    _num --;
    _num = _num < 1 ? 1 : _num;
    switch (_num) {
            case 0:
            im = [self drawImage1];
            break;
            case 1:
            
            break;
        default:
            break;
    }
    _imageview.image = im;
    [_imageview setFrame:CGRectMake(0, 0, im.size.width, im.size.height)];
    _imageview.center = self.view.center;
}
@end
