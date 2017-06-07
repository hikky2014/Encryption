//
//  BaseAdapter.h
//  TableView_Adapter_Demo
//
//  Created by 崔民浩 on 17/6/8.
//  Copyright © 2017年 MH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseAdapter : NSObject<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray *dataArray;

@end
