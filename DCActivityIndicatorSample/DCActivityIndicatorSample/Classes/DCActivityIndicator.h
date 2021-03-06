//
//  DCActivityIndicator.h
//  DCActivityIndicatorSample
//
//  Created by 廣川政樹 on 2013/07/01.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import <UIKit/UIKit.h>

#define INDICATOR_LARGE_SIZE 50
#define INDICATOR_SMALL_SIZE 20

@interface DCActivityIndicator : UIActivityIndicatorView

+ (void)start:(id)view center:(CGPoint)center styleId:(NSInteger)styleId hidesWhenStopped:(BOOL)hidesWhenStopped;
+ (void)stop;
+ (BOOL)isAnimating;

@end
