//
//  UIView+jjjjj.m
//  Interview04-MVC-Apple
//
//  Created by dp on 2021/9/2.
//  Copyright © 2021 MJ Lee. All rights reserved.
//

#import "UIView+jjjjj.h"
#import <objc/runtime.h>
@implementation UIView (jjjjj)
-(void)setOld_x:(CGFloat)old_x{
    objc_setAssociatedObject(self, "UIView_old_x", @(old_x), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
-(CGFloat)old_x{
    return [objc_getAssociatedObject(self, "UIView_old_x") doubleValue];
}
-(void)startAninmae{
    self.old_x=self.frame.origin.x;
    self.old_y=self.frame.origin.y;
    self.old_w=self.frame.size.width;
    self.old_h=self.frame.size.height;
    [self up];
}

-(void)up{
    [UIView animateWithDuration:2 animations:^{
        self.frame = CGRectMake(self.old_x, self.old_y + 25, self.old_w, self.old_h);
    }];
    [UIView animateWithDuration:2 delay:2 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.frame = CGRectMake(self.old_x, self.old_y - 25, self.old_w, self.old_h);
    } completion:^(BOOL finished) {
        [self up];
    }];
}
@end
