//
//  ViewController.m
//  DailyExpense
//
//  Created by Apple on 9/10/12.
//  Copyright (c) 2012 Apple. All rights reserved.
//

#import "ViewController.h"
#import "DailyExpense.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    //[txtWrite resignFirstResponder];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UIViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"LoginViewController"];
    [vc setModalPresentationStyle:UIModalPresentationFullScreen];
    
    [self presentModalViewController:vc animated:YES];
}

@end
