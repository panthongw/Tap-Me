//
//  ViewController.h
//  Tap Me
//
//  Created by Pan W on 1/12/14.
//  Copyright (c) 2014 Pan W. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>
{
    IBOutlet UILabel *timerLabel;
    IBOutlet UILabel *scoreLabel;
    
    NSInteger count;
    NSInteger seconds;
    NSTimer *timer;
}

- (IBAction)buttonPressed;

@end
