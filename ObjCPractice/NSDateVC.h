//
//  NSDateVC.h
//  ObjCPractice
//
//  Created by Donovan Cotter on 5/11/16.
//  Copyright © 2016 DonovanCotter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSDateVC : UIViewController

@property(nonatomic, strong) NSTimer *timer;
@property(nonatomic) int startTime;
@property(nonatomic) int tapCount;

@end
