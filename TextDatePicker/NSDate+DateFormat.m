//
//  NSDate+DateFormat.m
//  TextDatePicker
//
//  Created by DJ110 on 4/5/14.
//  Copyright (c) 2014 DJ110. All rights reserved.
//

#import "NSDate+DateFormat.h"

@implementation NSDate (DateFormat)

-(NSString *)formatWithoutSec {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy/MM/dd HH:mm"];
    return [formatter stringFromDate:self];
}

@end
