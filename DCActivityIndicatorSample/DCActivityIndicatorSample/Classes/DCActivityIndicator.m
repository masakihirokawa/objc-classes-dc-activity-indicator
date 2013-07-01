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

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


/**
 
 プロパティ名/型	読専	説明
 hidesWhenStopped
 （BOOL）		 アニメーションが止まっている時の表示の設定
 　YES：インジケータを非表示にする（デフォルト）
 　NO：インジケータを表示したままにする
 
 activityIndicatorViewStyle
 （UIActivityIndicatorViewStyle）		 スタイルを設定する
 　UIActivityIndicatorViewStyleWhite：標準サイズ（白）
 　UIActivityIndicatorViewStyleGray：標準サイズ（灰色）
 　UIActivityIndicatorViewStyleWhiteLarge：大サイズ（白）
 */


+ (void)start:(id)delegate
{
    //UIActivityIndicator初期化
    DCActivityIndicator.indicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    
    //色をグレーに指定
    DCActivityIndicator.indicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
    
    //座標を指定
    DCActivityIndicator.indicator.center = delegate.view.center;
    
    //停止した時に隠れるよう設定
    DCActivityIndicator.indicator.hidesWhenStopped = YES;
    
    //画面に追加
    [delegate.view addSubview:_indicator];
    
    if (UIActivityIndicatorViewStyleWhiteLarge == DCActivityIndicator.indicator.activityIndicatorViewStyle) {
        DCActivityIndicator.indicator.frame = CGRectMake(0, 0, INDICATOR_LARGE_SIZE, INDICATOR_LARGE_SIZE);
    } else {
        DCActivityIndicator.indicator.frame = CGRectMake(0, 0, INDICATOR_SMALL_SIZE, INDICATOR_SMALL_SIZE);
    }
    
    [DCActivityIndicator.indicator startAnimating];
}

+ (void)stop
{
    [DCActivityIndicator.indicator stopAnimating];
}

+ (BOOL)isAnimating
{
    return [DCActivityIndicator.indicator isAnimating];
}

+ (UIActivityIndicatorView *)indicator
{
    return indicator;
}

@end
