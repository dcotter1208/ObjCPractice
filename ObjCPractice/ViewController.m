//
//  ViewController.m
//  ObjCPractice
//
//  Created by Donovan Cotter on 5/6/16.
//  Copyright © 2016 DonovanCotter. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *randomNumLabel;
@property (weak, nonatomic) IBOutlet UILabel *randomWordLabel;
@property (weak, nonatomic) IBOutlet UITextField *addTextTF;

@end

@implementation ViewController
NSMutableArray *randomWordArray;

- (void)viewDidLoad {
    [super viewDidLoad];
        
    randomWordArray = [NSMutableArray arrayWithObjects:@"Yes", @"No", @"Donovan", @"Edward", @"Mic Drop", @"Yellow", @"Yay!", @"Watermelon", @"Pool", @"Cards", @"Potatoes", @"Orange", @"Green", @"Tomatoes", @"Bananas", nil];
    
    int product = [self multipleNumbers:19 factorTwo:10];
    NSLog(@"%d", product);
    
    _array = [[NSMutableArray alloc]init];
        
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addTextButton:(id)sender {
    
    NSString *wordToAdd = _addTextTF.text;
    
    [_array addObject:wordToAdd];
    NSLog(@"%@", _array);
    
}

- (IBAction)removeAll:(id)sender {
    
    NSString *stringToRemove = @"hello";
    
    if ([_array containsObject:stringToRemove]) {
        NSLog(@"YES!");
        NSUInteger indexOfObject = [_array indexOfObject:stringToRemove];
        [_array removeObjectAtIndex:indexOfObject];
        NSLog(@"%@", _array);
    }
}

-(int)multipleNumbers:(int)factorOne factorTwo:(int)factorTwo {
    int product = factorOne * factorTwo;
    
    return product;
}

-(int)randomNumberGenerator{
    
    int randomInt = arc4random() % 100;
    NSLog(@"RANDOM #: %d", randomInt);
    return randomInt;
}

-(NSString *)getRandomWordFromArray {
    
    UInt32 arrayCount = (UInt32)randomWordArray.count;
    UInt32 unsignedRandomNum = arc4random_uniform(arrayCount);
    int randomNumber = (int)unsignedRandomNum;
    
    NSString *randomWord = randomWordArray[randomNumber];
    [randomWordArray removeObjectAtIndex:randomNumber];
    
    NSLog(@"%@", randomWordArray);
    return randomWord;
}

- (IBAction)getRandomNum:(id)sender {
    int randomNum = [self randomNumberGenerator];
    self.randomNumLabel.text = [NSString stringWithFormat:@"%d", randomNum];
}

- (IBAction)getRandomWord:(id)sender {
    
    if (randomWordArray.count > 0) {
        
        NSString *randomWord = [self getRandomWordFromArray];
        self.randomWordLabel.text = randomWord;
    } else {
        self.randomWordLabel.text = @"NO MORE WORDS!!!!";
    }

}

-(void)NSDateFormatting{
    NSDate *now = [NSDate date];
    NSLog(@"%@", now);
    
    NSTimeInterval weekInSeconds = 7 * 24 * 60 * 60;
    
    NSDate *lastWeek = [NSDate dateWithTimeIntervalSinceNow:-weekInSeconds];
    NSLog(@"Last Week: %@", lastWeek);
}



@end
