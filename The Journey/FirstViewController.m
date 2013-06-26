//
//  FirstViewController.m
//  The Journey
//
//  Created by Zack Fletcher on 6/11/13.
//  Copyright (c) 2013 The Journey. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    
    
    [super viewDidLoad];
     NSInteger red = 254;
    NSInteger green = 118;
    NSInteger blue = 5;
    [self.navigationController.navigationBar setTintColor:[UIColor colorWithRed:red/255.0f green:green/255.0f blue:blue/255.0f alpha:1.0]];
    
    CGFloat r = 254;
    CGFloat g = 118;
    CGFloat b = 5;
    self.tabBarController.tabBar.selectedImageTintColor = [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
