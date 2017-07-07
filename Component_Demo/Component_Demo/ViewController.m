//
//  ViewController.m
//  Component_Demo
//
//  Created by minhao on 17/6/26.
//  Copyright © 2017年 MH. All rights reserved.
//

#import "ViewController.h"
#import "MarkView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MarkView *markView = [[MarkView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:markView];
    
  
   
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
