//
//  ViewController.m
//  TableView_Adapter_Demo
//
//  Created by Hikky on 17/6/7.
//  Copyright © 2017年 MH. All rights reserved.
//

#import "ViewController.h"
#import "UserAdapter.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) UserAdapter *adapter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initAdapter];
}

- (void)initAdapter {
    _adapter = [[UserAdapter alloc] init];
    _tableView.delegate = _adapter;
    _tableView.dataSource = _adapter;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


@end
