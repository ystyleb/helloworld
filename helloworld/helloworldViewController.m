//
//  helloworldViewController.m
//  helloworld
//
//  Created by bo yang on 12-2-23.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "helloworldViewController.h"

@interface helloworldViewController ()

@end

@implementation helloworldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    int w = self.view.frame.size.width;
    int h = self.view.frame.size.height;
    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    label.center = CGPointMake(w/2, h/2);
    label.textAlignment = UITextAlignmentCenter;
    label.backgroundColor = [UIColor clearColor];
    label.text = @"Hello World!";
    [self.view addSubview:label];
    
    //s[label releaes];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
