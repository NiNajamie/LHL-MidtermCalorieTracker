//
//  ZBJSingleSelectionHeaderView.m
//  LHL-MidtermCalorieTracker
//
//  Created by Asuka Nakagawa on 2016-07-25.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "ZBJSingleSelectionHeaderView.h"

@interface ZBJSingleSelectionHeaderView ()

@property (nonatomic, strong) UILabel *monthLabel;
@property (nonatomic, assign) NSInteger weekday;
@end

@implementation ZBJSingleSelectionHeaderView


- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.monthLabel];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.monthLabel.frame = CGRectMake(0, 0, CGRectGetWidth(self.monthLabel.frame), 20);
    self.monthLabel.center = CGPointMake(25 * ((self.weekday - 1) * 2 + 1), CGRectGetHeight(self.frame) / 2);
}

#pragma mark - setters
- (void)setFirstDateOfMonth:(NSDate *)firstDateOfMonth {
    _firstDateOfMonth = firstDateOfMonth;
    NSCalendar *calendar = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    
//    NSCalendar *calendar = [NSDate gregorianCalendar];
    NSDateComponents *components = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitWeekday fromDate:firstDateOfMonth];
    self.weekday = components.weekday;
//    self.monthLabel.text = [NSString stringWithFormat:@"%ld月", components.month];

    
    
    self.monthLabel.text = [NSString stringWithFormat:@"Month of %ld", components.month];
    [self.monthLabel sizeToFit];
    [self layoutSubviews];
}


#pragma mark - getters
- (UILabel *)monthLabel {
    if (!_monthLabel) {
        _monthLabel = [[UILabel alloc] init];
        _monthLabel.font = [UIFont systemFontOfSize:17];
        _monthLabel.textColor = [UIColor darkTextColor];
    }
    return _monthLabel;
}
@end
