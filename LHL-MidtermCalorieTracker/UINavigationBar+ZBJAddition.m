//
//  UINavigationBar+ZBJAddition.m
//  LHL-MidtermCalorieTracker
//
//  Created by Asuka Nakagawa on 2016-07-25.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "UINavigationBar+ZBJAddition.h"

@implementation UINavigationBar (ZBJAddition)

- (void)hidenHairLine:(BOOL)hiden {
    UIImageView *lineView = [self findHairlineFromView:self];
    lineView.hidden = hiden;
}

- (UIImageView *)findHairlineFromView:(UIView *)view
{
    if ([view isKindOfClass:[UIImageView class]] && view.frame.size.height <= 1.0) {
        return (UIImageView *)view;
    }
    
    for (UIView *subView in view.subviews) {
        UIImageView *imageView = [self findHairlineFromView:subView];
        if (imageView) {
            return imageView;
        }
    }
    
    return nil;
}
@end
