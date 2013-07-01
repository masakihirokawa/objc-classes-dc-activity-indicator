//
//  DCActivityIndicator.m
//  DCActivityIndicatorSample
//
//  Created by 廣川政樹 on 2013/07/01.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "DCActivityIndicator.h"

@implementation DCActivityIndicator

static UIActivityIndicatorView *indicator;

/*
typedef enum styles : NSInteger {
    WHITE       = UIActivityIndicatorViewStyleWhite,
    GRAY        = UIActivityIndicatorViewStyleGray,
    WHITE_LARGE = UIActivityIndicatorViewStyleWhiteLarge
} styles;
*/

//アニメーション開始
+ (void)start:(id)view center:(CGPoint)center styleId:(NSInteger)styleId hidesWhenStopped:(BOOL)hidesWhenStopped
{
    //インジケーター初期化
    DCActivityIndicator.indicator = [[UIActivityIndicatorView alloc] init];
    
    //スタイルを設定
    DCActivityIndicator.indicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
    
    //スタイルに応じて寸法変更
    if (DCActivityIndicator.indicator.activityIndicatorViewStyle == UIActivityIndicatorViewStyleWhiteLarge) {
        DCActivityIndicator.indicator.frame = CGRectMake(0, 0, INDICATOR_LARGE_SIZE, INDICATOR_LARGE_SIZE);
    } else {
        DCActivityIndicator.indicator.frame = CGRectMake(0, 0, INDICATOR_SMALL_SIZE, INDICATOR_SMALL_SIZE);
    }
    
    //座標をセンターに指定
    DCActivityIndicator.indicator.center = center;
    
    //停止した時に隠れるよう設定
    DCActivityIndicator.indicator.hidesWhenStopped = hidesWhenStopped;
    
    //インジケーターアニメーション開始
    [DCActivityIndicator.indicator startAnimating];
    
    //画面に追加
    [view addSubview:DCActivityIndicator.indicator];
}

//アニメーション停止
+ (void)stop
{
    [DCActivityIndicator.indicator stopAnimating];
}

//アニメーション中であるか
+ (BOOL)isAnimating
{
    return [DCActivityIndicator.indicator isAnimating];
}

+ (void)setIndicator:(UIActivityIndicatorView *)indicator
{
    DCActivityIndicator.indicator = indicator;
}

+ (UIActivityIndicatorView *)indicator
{
    return DCActivityIndicator.indicator;
}

@end
