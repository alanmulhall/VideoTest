//
//  ViewController.m
//  VideoTest
//
//  Created by alan mulhall on 2/12/14.
//  Copyright (c) 2014 alan mulhall. All rights reserved.
//

#import "ViewController.h"
#import <MediaPlayer/MediaPlayer.h>


@interface ViewController ()

@end

@implementation ViewController

@synthesize playercontroller;

- (void)viewDidLoad
{
    [self playMovie];
    [super viewDidLoad];

}

- (void) playMovie {
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                         pathForResource:@"documentariesandyou" ofType:@"mp4"]];
    
    playercontroller = [[MPMoviePlayerViewController alloc]
                                                     initWithContentURL:url];
    
    
    playercontroller.moviePlayer.movieSourceType = MPMovieSourceTypeFile;
    [self.view addSubview:playercontroller.view];
    [playercontroller.moviePlayer play];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
