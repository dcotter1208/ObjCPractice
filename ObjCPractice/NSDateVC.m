//
//  NSDateVC.m
//  ObjCPractice
//
//  Created by Donovan Cotter on 5/11/16.
//  Copyright © 2016 DonovanCotter. All rights reserved.
//

#import "NSDateVC.h"

@interface NSDateVC ()

@property (weak, nonatomic) IBOutlet UILabel *timerLabel;

@end

@implementation NSDateVC

- (void)viewDidLoad {
    [super viewDidLoad];
    _tapCount = 0;
    _startTime = 30;
    _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector: @selector(subtractTime) userInfo:nil repeats:YES];
    
    [self NSDateFormatting];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)NSDateFormatting{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"MM/dd/YYYY"];
    
    NSTimeInterval weekInSeconds = 7 * 24 * 60 * 60;
    
    //Last Week
    NSDate *lastWeek = [NSDate dateWithTimeIntervalSinceNow:-weekInSeconds];
    NSString *formattedLastWeek = [dateFormatter stringFromDate:lastWeek];
    NSLog(@"Last Week: %@", formattedLastWeek);
    
    //Next Week
    NSDate *nextWeek = [NSDate dateWithTimeIntervalSinceNow:+weekInSeconds];
    NSString *formattedNextWeek = [dateFormatter stringFromDate:nextWeek];
    NSLog(@"Next Week: %@", formattedNextWeek);
    
    NSDate *twoDaysFromNow = [NSDate dateWithTimeIntervalSinceNow:2* 24 * 60 * 60];
    NSString *twoDaysFormatted = [dateFormatter stringFromDate:twoDaysFromNow];
    NSLog(@"In Two Days the date will be: %@", twoDaysFormatted);
    
}

-(void)subtractTime {
    
    _startTime--;
    _timerLabel.text = [NSString stringWithFormat:@"%d", _startTime];
    
    if (_startTime == 0) {
        [_timer invalidate];
        NSLog(@"TIMES UP SUCKA! Your Tap Count is: %d", _tapCount);
        UIColor *red = [UIColor redColor];
        [self.view setBackgroundColor:red];
    }
}

- (IBAction)pressMePressed:(id)sender {
    _tapCount++;
    
}


@end
