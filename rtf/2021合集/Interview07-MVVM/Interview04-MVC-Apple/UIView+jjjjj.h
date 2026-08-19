//
//  UIView+jjjjj.h
//  Interview04-MVC-Apple
//
//  Created by dp on 2021/9/2.
//  Copyright © 2021 MJ Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (jjjjj)
@property (nonatomic, assign) CGFloat old_x;
@property (nonatomic, assign) CGFloat old_y;
@property (nonatomic, assign) CGFloat old_w;
@property (nonatomic, assign) CGFloat old_h;
-(void)startAninmae;
@end

NS_ASSUME_NONNULL_END
