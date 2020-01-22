//
//  ViewController.m
//  SpeakScreen
//
//  Created by Hafiz Usama on 1/20/20.
//  Copyright © 2020 Hafiz Usama. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()

@property (nonatomic, strong) WKWebView *wkWebView;
@property (nonatomic, strong) UILabel *label;
@property (nonatomic, copy) NSString *htmlString;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.htmlString = @"https://www.wellandgood.com/good-sweat/exercises-for-core-strength-gymnast/";
}

- (CGFloat)webViewBottomPadding {
    return 100;
}

- (CGFloat)labelBottomPadding {
    return 30;
}

- (CGFloat)labelHeightPadding {
    return 30;
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    CGRect frame = self.view.bounds;
    frame.size.height -= [self webViewBottomPadding];
    if (!self.wkWebView) {
        self.wkWebView = [[WKWebView alloc] initWithFrame:frame];
        [self.view addSubview:self.wkWebView];
        
        if (self.htmlString)
        {
            NSURL *url = [[NSURL alloc] initWithString:self.htmlString];
            NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
            [_wkWebView loadRequest:request];
        }
    }
    self.wkWebView.frame = frame;
    
    CGFloat labelY = self.view.bounds.size.height - [self labelBottomPadding] - [self labelHeightPadding];
    CGRect labelFrame = CGRectMake(0, labelY, self.view.bounds.size.width, [self labelHeightPadding]);
    if (!self.label) {
        self.label = [[UILabel alloc] initWithFrame:labelFrame];
        self.label.text = @"First finish speaking wkwebview content";
        self.label.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:self.label];
    }
    self.label.frame = labelFrame;
}

@end
