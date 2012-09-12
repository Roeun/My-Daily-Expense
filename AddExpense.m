//
//  AddExpense.m
//  DailyExpense
//
//  Created by Apple on 9/10/12.
//  Copyright (c) 2012 Apple. All rights reserved.
//

#import "AddExpense.h"
#import "DailyExpense.h"

@interface AddExpense ()

@end

@implementation AddExpense
@synthesize txtItemName;
@synthesize txtExpense;
@synthesize txtDate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setTxtItemName:nil];
    [self setTxtExpense:nil];
    [self setTxtDate:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)btnSave:(id)sender {
    DailyExpense *obj = [[DailyExpense alloc] init];
    NSString *saveData ;
    NSTimeInterval item_id = [[NSDate date] timeIntervalSince1970];
    saveData = [@"" stringByAppendingFormat:@"%@|%@|%@|%@\n", [NSString stringWithFormat:@"%.f", item_id] , self.txtItemName.text, self.txtExpense.text, self.txtDate.text];
    BOOL save = [obj saveFile:saveData];
    if (save) {
        NSLog(@"Successful");
    }
    else {
        NSLog(@"Fail");
    }
}

- (IBAction)btnClear:(id)sender {
    self.txtDate.text = @"";
    self.txtExpense.text = @"";
    self.txtItemName.text = @"";
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [txtItemName resignFirstResponder];
    [txtExpense resignFirstResponder];
    [txtDate resignFirstResponder];
}

@end
