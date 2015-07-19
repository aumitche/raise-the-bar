//
//  DrinksViewController.m
//  raise-the-bar
//
//  Created by Mitchell Au on 2015–07–18.
//  Copyright (c) 2015 GARY. All rights reserved.
//

#import "DrinksViewController.h"

@interface DrinksViewController ()

@end

@implementation DrinksViewController

@synthesize infoLabel;
@synthesize drink1Label;
@synthesize drink2Label;
@synthesize drink3Label;
@synthesize drink4Label;
@synthesize drinks;

- (void)viewDidLoad {
    [super viewDidLoad];
	
	infoLabel.font = [UIFont fontWithName:AVENIR size:fitStringToLabel(@"Enter up to four favourite drinks.", AVENIR, infoLabel)];
	drink1Label.font = [UIFont fontWithName:AVENIR size:fitStringToLabel(@"Favourite drink № 1", AVENIR, drink1Label)];
	drink2Label.font = [UIFont fontWithName:AVENIR size:fitStringToLabel(@"Favourite drink № 2", AVENIR, drink2Label)];
	drink3Label.font = [UIFont fontWithName:AVENIR size:fitStringToLabel(@"Favourite drink № 3", AVENIR, drink3Label)];
	drink4Label.font = [UIFont fontWithName:AVENIR size:fitStringToLabel(@"Favourite drink № 4", AVENIR, drink4Label)];
	
	drinks = [[NSMutableArray alloc] init];
}

- (NSMutableArray*) createDrinkArray {
	NSMutableArray* drinkArray = [[NSMutableArray alloc] init];
	
	Drink* drink1 = [[Drink alloc] initWithName:@"Apple juice" price:4.59 quantity:0];
	[drinkArray addObject:drink1];
	Drink* drink2 = [[Drink alloc] initWithName:@"Orange juice" price:3.00 quantity:0];
	[drinkArray addObject:drink2];
	Drink* drink3 = [[Drink alloc] initWithName:@"Chocolate milf" price:2.00 quantity:0];
	[drinkArray addObject:drink3];
	Drink* drink4 = [[Drink alloc] initWithName:@"Pussy juice" price:69.00 quantity:0];
	[drinkArray addObject:drink4];
	
	
	return drinkArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
