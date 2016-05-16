//
//  DelegateVCTwo.m
//  ObjCPractice
//
//  Created by Donovan Cotter on 5/9/16.
//  Copyright © 2016 DonovanCotter. All rights reserved.
//

#import "DelegateVCTwo.h"

@interface DelegateVCTwo ()
@property (weak, nonatomic) IBOutlet UITextField *textToPassTF;

@end

@implementation DelegateVCTwo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendAndDismiss:(id)sender {
    
    NSString *textToPass = self.textToPassTF.text;
    
    [_delegate sendTextToViewController:textToPass];
    
    [self dismissViewControllerAnimated:true completion:nil];
    
}



@end
