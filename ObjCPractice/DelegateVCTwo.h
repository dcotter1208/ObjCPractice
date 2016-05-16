//
//  DelegateVCTwo.h
//  ObjCPractice
//
//  Created by Donovan Cotter on 5/9/16.
//  Copyright © 2016 DonovanCotter. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SendTextDelegate <NSObject>

-(void)sendTextToViewController:(NSString *)textToPass;

@end

@interface DelegateVCTwo : UIViewController

@property(nonatomic, weak) id<SendTextDelegate>delegate;

@end
