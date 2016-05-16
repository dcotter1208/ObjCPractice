//
//  AnimalsTableView.m
//  ObjCPractice
//
//  Created by Donovan Cotter on 5/7/16.
//  Copyright © 2016 DonovanCotter. All rights reserved.
//

#import "AnimalsTableView.h"

@interface AnimalsTableView () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *animalsTableView;

@end

@implementation AnimalsTableView

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _animals = [NSMutableArray arrayWithObjects:@"Rhino", @"Dog", @"Cat", @"Elephant", @"Bird", @"Snake", @"Hippo", @"Mouse", @"Tiger", @"Lion", @"Bird", @"Giraffe", @"Zebra", @"Horse", @"Flamingo", @"Tiger", @"Lion", @"Bird", @"Giraffe", @"Zebra", @"Horse", @"Flamingo", @"Tiger", @"Lion", @"Bird", @"Giraffe", @"Zebra", @"Horse", @"Flamingo", nil];
    [self scrollTableViewToBottomIndexPath];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _animals.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = _animals[indexPath.row];
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {

    if (editingStyle == UITableViewCellEditingStyleDelete) {
        NSLog(@"%@",[_animals objectAtIndex:indexPath.row]);
        [_animals removeObjectAtIndex:indexPath.row];
        
        [_animalsTableView reloadData];
    }
}

-(void)scrollTableViewToBottomIndexPath {

    NSIndexPath *lastIndex = [NSIndexPath indexPathForRow:[_animals count]-1 inSection:0];
    NSLog(@"%@", lastIndex);
    [_animalsTableView scrollToRowAtIndexPath:lastIndex atScrollPosition:UITableViewScrollPositionBottom animated:YES];
    [_animalsTableView reloadData];
}




@end
