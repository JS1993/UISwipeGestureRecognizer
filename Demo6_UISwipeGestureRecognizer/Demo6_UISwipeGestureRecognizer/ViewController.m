//
//  ViewController.m
//  Demo6_UISwipeGestureRecognizer
//
//  Created by  江苏 on 16/2/29.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UISwipeGestureRecognizer* swipe=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    swipe.numberOfTouchesRequired=1;
    swipe.direction=UISwipeGestureRecognizerDirectionRight|UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipe];
}
-(void)swipe:(UISwipeGestureRecognizer*)sender{
    NSLog(@"swipe:%@",sender);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
