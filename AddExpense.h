//
//  AddExpense.h
//  DailyExpense
//
//  Created by Apple on 9/10/12.
//  Copyright (c) 2012 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddExpense : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtItemName;
@property (weak, nonatomic) IBOutlet UITextField *txtExpense;
@property (weak, nonatomic) IBOutlet UITextField *txtDate;
- (IBAction)btnSave:(id)sender;
- (IBAction)btnClear:(id)sender;

@end
