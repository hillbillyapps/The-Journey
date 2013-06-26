//
//  SettingsView.m
//  The Journey
//
//  Created by Zack Fletcher on 6/14/13.
//  Copyright (c) 2013 The Journey. All rights reserved.
//

#import "SettingsView.h"

@interface SettingsView ()

@end

@implementation SettingsView

/* 
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/
- (void)viewDidLoad
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSInteger selectedCampus = [defaults integerForKey:@"campusPreference"];
    _primaryCampus.selectedSegmentIndex = selectedCampus;
    NSLog(@"Loaded campus: %i", selectedCampus);
    
    
    
    
    
    
    [super viewDidLoad];
    
    NSInteger red = 254;
    NSInteger green = 118;
    NSInteger blue = 5;
    [self.navigationController.navigationBar setTintColor:[UIColor colorWithRed:red/255.0f green:green/255.0f blue:blue/255.0f alpha:1.0]];
    
    [_primaryCampus addTarget:self
                         action:@selector(saveCampus:)
               forControlEvents:UIControlEventValueChanged];
    
    
    
    

    
	// Do any additional setup after loading the view.
}

-(void)saveCampus:(id)sender;{
    
    NSInteger selectedCampus;
    selectedCampus = _primaryCampus.selectedSegmentIndex;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:selectedCampus forKey:@"campusPreference"];
    [defaults synchronize];
    NSLog(@"Data Saved");
    NSLog(@"selectedCampus: %i", selectedCampus);
    
    
    
    
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
