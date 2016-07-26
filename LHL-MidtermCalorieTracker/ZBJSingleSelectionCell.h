//
//  ZBJSingleSelectionCell.h
//  LHL-MidtermCalorieTracker
//
//  Created by Asuka Nakagawa on 2016-07-25.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef CF_ENUM(NSInteger, ZBJCalendarCellState) {
    ZBJCalendarCellStateEmpty,
    ZBJCalendarCellStateNormal,
    ZBJCalendarCellStateSelected,
};



@interface ZBJSingleSelectionCell : UICollectionViewCell

@property (nonatomic, strong) NSDate *date;
@property (nonatomic, assign) ZBJCalendarCellState cellState;

@end
