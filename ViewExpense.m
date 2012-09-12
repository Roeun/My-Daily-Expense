//
//  ViewExpense.m
//  DailyExpense
//
//  Created by Apple on 9/11/12.
//  Copyright (c) 2012 Apple. All rights reserved.
//

#import "ViewExpense.h"
#import "DailyExpense.h"

@interface ViewExpense ()

@end

@implementation ViewExpense
@synthesize lblTile;
@synthesize tblView;
@synthesize lblID;
@synthesize lblItem;
@synthesize lblExpense;
@synthesize lblDate;

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
    [tblView setScrollEnabled:YES];
    [tblView setContentSize:CGSizeMake(320,800)];
    
    lblDate.numberOfLines = 0;
    //[lblDate sizeToFit];
    [self load_data];
}

- (void)viewDidUnload
{
    [self setLblTile:nil];
    [self setTblView:nil];
    [self setLblID:nil];
    [self setLblItem:nil];
    [self setLblExpense:nil];
    [self setLblDate:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)btnRefresh:(id)sender {
    [self load_data];
}

- (void) load_data {
    DailyExpense *obj = [[DailyExpense alloc] init];
    
    self.lblID.text = @"";
    self.lblItem.text = @"";
    self.lblExpense.text = @"";
    self.lblDate.text = @"";
    
    NSArray *data_all = [obj readFile];
    for (NSString *data_line in data_all) {
        NSArray *data = [data_line componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"|"]];
        if (![data_line isEqualToString:@""]) {
            
            self.lblID.text = [self.lblID.text stringByAppendingString: [data objectAtIndex:0]];
            self.lblID.text = [self.lblID.text stringByAppendingString:@"\n\n"];
           
            self.lblItem.text = [self.lblItem.text stringByAppendingString: [data objectAtIndex:1]];
            self.lblItem.text = [self.lblItem.text stringByAppendingString:@"\n\n"];
            
            self.lblExpense.text = [self.lblExpense.text stringByAppendingString: [data objectAtIndex:2]];
            self.lblExpense.text = [self.lblExpense.text stringByAppendingString:@"\n\n"];
            
            self.lblDate.text = [self.lblDate.text stringByAppendingString: [data objectAtIndex:3]];
            self.lblDate.text = [self.lblDate.text stringByAppendingString:@"\n\n"];
            
        }
    }
    
    [lblDate sizeToFit];
    [lblExpense sizeToFit];
    [lblID sizeToFit];
    [lblItem sizeToFit];
    
}
@end
