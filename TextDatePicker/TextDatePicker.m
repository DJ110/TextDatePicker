//
//  TextDatePicker.m
//  TextDatePicker
//
//  Created by DJ110 on 4/5/14.
//  Copyright (c) 2014 DJ110. All rights reserved.
//

#import "TextDatePicker.h"
#import "NSDate+DateFormat.h"
#import "NSString+DateFormat.h"

@interface TextDatePicker()

@property (nonatomic) UILabel *timelabel;
@property (nonatomic) UIView *sheet;
@property (nonatomic) BOOL opened;
@property (nonatomic) UIDatePicker *picker;

@end

@implementation TextDatePicker

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

#pragma mark - Create UI
-(void)show {
    if ( self.parent == nil
        && self.textfield_width > self.parent.frame.size.width
        && self.textfield_height > self.parent.frame.size.height
        && self.textfield_height < 0
        && self.textfield_position_x < 0) {
        
        // Do nothing
        return;
    }
    self.opened = NO;
    
    // Default Value
    if ( self.textfield_height == 0 ) {
        self.textfield_height = 50;
    }
    if ( self.textfield_width == 0  ) {
        self.textfield_width = self.parent.frame.size.width;
    }
    
    UIView *backView = [[UIView alloc] init];
    backView.frame = CGRectMake(self.textfield_position_x,
                                self.textfield_position_y,
                                self.textfield_width - self.textfield_height - 2 * self.textfield_position_x,
                                self.textfield_height);
    [backView setBackgroundColor:[UIColor whiteColor]];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self action:@selector(openPicker:) forControlEvents:UIControlEventTouchUpInside];
    
    button.frame = CGRectMake(self.textfield_width - self.textfield_height - self.textfield_position_x,
                              self.textfield_position_y,
                              self.textfield_height,
                              self.textfield_height);
    
    [button setBackgroundColor:[UIColor whiteColor]];
    [button setBackgroundImage:[UIImage imageNamed:@"dropdown.png"] forState:UIControlStateNormal];
    
    self.timelabel = [[UILabel alloc] init];
    self.timelabel.text = self.defaultDate == nil ? [[NSDate date] formatWithoutSec] : [self.defaultDate formatWithoutSec];
    self.timelabel.frame = CGRectMake(self.textfield_position_x,
                                      self.textfield_position_y,
                                      self.textfield_width - self.textfield_height,
                                      self.textfield_height);
    
    self.timelabel.textAlignment = NSTextAlignmentCenter;
    
    [self.parent addSubview:backView];
    [self.parent addSubview:self.timelabel];
    [self.parent addSubview:button];
}

-(void)createSheet {
    self.opened = YES;
    self.sheet = [[UIView alloc] init];
    self.sheet.frame = CGRectMake(self.textfield_position_x,
                                  self.textfield_position_y + self.textfield_height,
                                  self.textfield_width - 2 * self.textfield_position_x,
                                  0);
    [self.sheet setBackgroundColor:[UIColor whiteColor]];
    
    self.sheet.layer.opacity = 0.0;
    
    self.picker = [[UIDatePicker alloc] init];
    self.picker.frame = CGRectMake(0, 0, self.sheet.frame.size.width, self.sheet.frame.size.height);
    [self.sheet addSubview:self.picker];
    [self.parent addSubview:self.sheet];
    [UIView animateKeyframesWithDuration:self.duration
                                   delay:0.0
                                 options:UIViewKeyframeAnimationOptionCalculationModeLinear
                              animations:^{
                                  
                                  self.sheet.frame = CGRectMake(self.textfield_position_x,
                                                                self.textfield_position_y + self.textfield_height,
                                                                self.textfield_width - 2 * self.textfield_position_x,
                                                                160);
                                  self.sheet.layer.opacity = 1.0;
                              }
                              completion:^(BOOL finished) {
                              }];
}

#pragma mark - Helper
-(NSDate *)getDate {
    return [self.timelabel.text parseWithoutSec];
}

#pragma mark - Event
-(void)openPicker:(id)sender {
    if (!self.opened) {
        [self createSheet];
    }
    else {
        self.timelabel.text = [[self.picker date] formatWithoutSec];
        self.opened = NO;
        [self.sheet removeFromSuperview];
        self.sheet = nil;
    }
}

@end
