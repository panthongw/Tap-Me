//
//  ViewController.h
//  Tap Me
//
//  Created by Pan W on 1/12/14.
//  Copyright (c) 2014 Pan W. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>
{
    IBOutlet UILabel *timerLabel;
    IBOutlet UILabel *scoreLabel;
    
    NSInteger count;
    NSInteger seconds;
    NSTimer *timer;
    
    AVAudioPlayer *buttonBeep;
    AVAudioPlayer *secondBeep;
    AVAudioPlayer *backgroundMusic;
}

- (IBAction)buttonPressed;

@end
