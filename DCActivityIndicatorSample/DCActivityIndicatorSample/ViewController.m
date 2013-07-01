//
//  ViewController.m
//  DCActivityIndicatorSample
//
//  Created by 廣川政樹 on 2013/07/01.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [DCActivityIndicator start:self.view
                        center:self.view.center
                       styleId:1
              hidesWhenStopped:YES];
}

@end
