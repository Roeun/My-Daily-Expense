//
//  DeleteExpense.m
//  DailyExpense
//
//  Created by Apple on 9/11/12.
//  Copyright (c) 2012 Apple. All rights reserved.
//

#import "DeleteExpense.h"
#import "DailyExpense.h"

@interface DeleteExpense ()

@end

@implementation DeleteExpense

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
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)btnDelete:(id)sender {
    DailyExpense *obj = [[DailyExpense alloc] init];
    BOOL ok = [obj deleteFile];
    if (ok) {
        NSLog(@"Successful");
    }
    else {
        NSLog(@"Fail");
    }
}
@end
