//
//  DrinksViewController.h
//  raise-the-bar
//
//  Created by Mitchell Au on 2015–07–18.
//  Copyright (c) 2015 GARY. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "consts.h"
#import "gui.h"
#import "User.h"
#import "Drink.h"

@interface DrinksViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
@property (weak, nonatomic) IBOutlet UILabel *drink1Label;
@property (weak, nonatomic) IBOutlet UILabel *drink2Label;
@property (weak, nonatomic) IBOutlet UILabel *drink3Label;
@property (weak, nonatomic) IBOutlet UILabel *drink4Label;

@property NSMutableArray* drinks;

@end
