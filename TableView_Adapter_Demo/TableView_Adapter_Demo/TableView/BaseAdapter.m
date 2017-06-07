//
//  BaseAdapter.m
//  TableView_Adapter_Demo
//
//  Created by 崔民浩 on 17/6/8.
//  Copyright © 2017年 MH. All rights reserved.
//

#import "BaseAdapter.h"

@implementation BaseAdapter

- (instancetype)init {
    self = [super init];
    if(self) {
        _dataArray = [[NSMutableArray alloc] init];
    }
    return self;
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataArray.count;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return 80;
//}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = @"Name";
    cell.detailTextLabel.text = @"Hikky";
    
    return cell;
}


@end
