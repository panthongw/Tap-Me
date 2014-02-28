//
//  ViewController.m
//  Tap Me
//
//  Created by Pan W on 1/12/14.
//  Copyright (c) 2014 Pan W. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self setupGame];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)subtractTime
{
    seconds--;
    timerLabel.text = [NSString stringWithFormat:@"Time: %li", (long)seconds];
    
    if (seconds == 0) {
        [timer invalidate];
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Time is up!"
                              message:[NSString stringWithFormat:@"You socred %li points", (long)count]
                              delegate:self
                              cancelButtonTitle:@"Play Again"
                              otherButtonTitles:nil];
        [alert show];
    }
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    [self setupGame];
}

- (void)setupGame
{
    seconds = 30;
    count = 0;
    
    timerLabel.text = [NSString stringWithFormat:@"Time: %li", (long)seconds];
    scoreLabel.text = [NSString stringWithFormat:@"Score\n%li", (long)count];

    timer = [NSTimer scheduledTimerWithTimeInterval:1
                                             target:self
                                           selector:@selector(subtractTime)
                                           userInfo:nil
                                            repeats:YES];
}


- (IBAction)buttonPressed
{
    count++;
    scoreLabel.text = [NSString stringWithFormat:@"Score\n%li", (long)count];
    NSLog(@"Pressed and count is %li", (long)count);
}

@end
