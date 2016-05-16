//
//  DelegateVCOne.m
//  ObjCPractice
//
//  Created by Donovan Cotter on 5/9/16.
//  Copyright © 2016 DonovanCotter. All rights reserved.
//

#import "DelegateVCOne.h"

@interface DelegateVCOne ()
@property (weak, nonatomic) IBOutlet UILabel *passedTextLabel;

@end

@implementation DelegateVCOne

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)sendTextToViewController:(NSString *)textToPass {
    NSLog(@"TEXT PASSED: %@", textToPass);
    self.passedTextLabel.text = textToPass;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    DelegateVCTwo *delegateVCTwo = (DelegateVCTwo *)segue.destinationViewController;
    
    [delegateVCTwo setDelegate:self];
    
}

@end
