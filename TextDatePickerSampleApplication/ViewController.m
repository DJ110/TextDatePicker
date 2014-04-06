//
//  ViewController.m
//  TextDatePickerSampleApplication
//
//  Created by DJ110 on 4/5/14.
//  Copyright (c) 2014 DJ110. All rights reserved.
//

#import "ViewController.h"
#import "TextDatePicker.h"

@interface ViewController ()

@property (nonatomic) TextDatePicker *tpicker;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tpicker = [[TextDatePicker alloc] init];
    self.tpicker.parent = self.view;
    self.tpicker.textfield_height = 45;
    self.tpicker.textfield_position_x = 5;
    self.tpicker.textfield_position_y = 5;
    self.tpicker.duration = 0.5;
    
    [self.view addSubview:self.tpicker];
    [self.tpicker show];
    
    [self.view setBackgroundColor:[UIColor blackColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
