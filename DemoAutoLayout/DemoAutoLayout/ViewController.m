//
//  ViewController.m
//  MyDemoAutoLayout
//
//  Created by 张广洋 on 15/11/29.
//  Copyright © 2015年 张广洋. All rights reserved.
//

#import "ViewController.h"

#import "UIView+autoLayout.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createView];
}

-(void)createView{
    
    UIView * view1=[[UIView alloc]init];
    view1.backgroundColor=[UIColor redColor];
    [self.view addSubview:view1];
    view1.leading=10;
    view1.top=10;
    view1.trailing=10;
    view1.bottom=10;
    
    
    UIView * view2=[[UIView alloc]init];
    view2.backgroundColor=[UIColor greenColor];
    [self.view addSubview:view2];
    view2.top=20;
    view2.leading=20;
    view2.trailing=20;
    view2.widthHeightAspactRatio=5/1.0;
    
    UIView * view3=[[UIView alloc]init];
    view3.backgroundColor=[UIColor yellowColor];
    [self.view addSubview:view3];
    view3.alignLeadingView=view2;
    [view3 topSpace:10 toView:view2];
    view3.alignTrailingView=view2;
    view3.height=20;
    
    UIView * view4=[[UIView alloc]init];
    view4.backgroundColor=[UIColor grayColor];
    [self.view addSubview:view4];
    view4.alignLeadingView=view3;
    [view4 topSpace:10 toView:view3];
    [view4 widthRate:0.5 fromView:view3];
    [view4 heightRate:2.0 formView:view3];
    
    UIView * view5=[[UIView alloc]init];
    view5.backgroundColor=[UIColor purpleColor];
    [self.view addSubview:view5];
    [view5 leftSpace:10 toView:view4];
    [view5 topSpace:10 toView:view4];
    view5.widthHeightAspactRatio=1.0/2.0;
    view5.height=150;
}

@end
