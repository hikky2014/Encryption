//
//  UserAdapter.m
//  TableView_Adapter_Demo
//
//  Created by Hikky on 17/6/8.
//  Copyright © 2017年 MH. All rights reserved.
//

#import "UserAdapter.h"
#import "UserModel.h"

@implementation UserAdapter

- (instancetype)init{
    self = [super init];
    if(self) {
        [self.dataArray addObject:[[UserModel alloc] initWithTitle:@"Name" name:@"Hikkky"]];
        [self.dataArray addObject:[[UserModel alloc] initWithTitle:@"Name" name:@"Mike"]];
    }
    return self;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
    UserModel *model = [self.dataArray objectAtIndex:indexPath.row];
    cell.textLabel.text = model.title;
    cell.detailTextLabel.text = model.name;
    
    return cell;
}


@end
