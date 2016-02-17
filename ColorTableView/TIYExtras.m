//
//  TIYExtras.m
//  ColorTableView
//
//  Created by Jeff Ligon on 2/17/16.
//  Copyright © 2016 Visceral Origami. All rights reserved.
//

#import "TIYExtras.h"

@interface TIYExtras ()

@end

@implementation TIYExtras
//- (void)viewDidLoad {
//    [self.tableView registerClass:[UITableViewCell class]
//           forCellReuseIdentifier:@"ColorTable"];
//
//    srand((unsigned int)time(0));
//}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *tableViewCell =
      [tableView dequeueReusableCellWithIdentifier:@"ColorTable"
                                      forIndexPath:indexPath];
  [self styleCell:tableViewCell withText:@""];
  return tableViewCell;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
  return 50;
}

- (void)styleCell:(UITableViewCell *)cell withText:(NSString *)text {
  cell.textLabel.text = text;
  CGFloat redComp = drand48();
  CGFloat bluComp = drand48();
  CGFloat greComp = drand48();
  cell.backgroundColor =
      [UIColor colorWithRed:redComp green:greComp blue:bluComp alpha:1];
}

- (void)resetCell:(UITableViewCell *)cell {
  cell.backgroundColor = UIColor.whiteColor;
  cell.textLabel.text = @"";
}

@end
