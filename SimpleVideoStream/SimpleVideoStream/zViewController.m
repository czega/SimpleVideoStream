//
//  zViewController.m
//  SimpleVideoStream
//
//  Created by Christopher Zega on 8/12/14.
//  Copyright (c) 2014 Z. All rights reserved.
//

#import "zViewController.h"

@interface zViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation zViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    [self.webView setBackgroundColor:[UIColor blackColor]];
    [self.view setBackgroundColor:[UIColor blackColor]];
    
    //(c) copyright 2008, Blender Foundation / www.bigbuckbunny.org
    NSString *fullURL = @"http://mirror.cessen.com/blender.org/peach/trailer/trailer_iphone.m4v"; // Change to the URL of the video
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:requestObj];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
