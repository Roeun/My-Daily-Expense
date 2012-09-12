//
//  ViewExpense.h
//  DailyExpense
//
//  Created by Apple on 9/11/12.
//  Copyright (c) 2012 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewExpense : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblTile;
@property (weak, nonatomic) IBOutlet UIScrollView *tblView;
@property (weak, nonatomic) IBOutlet UILabel *lblID;
@property (weak, nonatomic) IBOutlet UILabel *lblItem;
@property (weak, nonatomic) IBOutlet UILabel *lblExpense;
@property (weak, nonatomic) IBOutlet UILabel *lblDate;
- (void) load_data;
- (IBAction)btnRefresh:(id)sender;

@end
