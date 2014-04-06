//
//  NSString+DateFormat.m
//  TextDatePicker
//
//  Created by DJ110 on 4/5/14.
//  Copyright (c) 2014 DJ110. All rights reserved.
//

#import "NSString+DateFormat.h"

@implementation NSString (DateFormat)

-(NSDate *)parseWithoutSec {
    NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm"];
    return [formatter dateFromString:self];
}

@end
