//
//  TextDatePicker.h
//  TextDatePicker
//
//  Created by DJ110 on 4/5/14.
//  Copyright (c) 2014 DJ110. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface TextDatePicker : UIView

@property (nonatomic, weak) UIView *parent;
@property (nonatomic) double textfield_width;
@property (nonatomic) double textfield_height;
@property (nonatomic) double textfield_position_x;
@property (nonatomic) double textfield_position_y;
@property (nonatomic) NSDate *defaultDate;
@property (nonatomic) double duration;

-(NSDate *)getDate;
-(void)show;

@end
