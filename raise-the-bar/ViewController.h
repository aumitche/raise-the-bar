//
//  ViewController.h
//  raise-the-bar
//
//  Created by Mitchell Au on 2015–07–18.
//  Copyright (c) 2015 GARY. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "PhotoViewController.h"
#import "gui.h"
#import "consts.h"
#import "User.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (weak, nonatomic) IBOutlet UILabel *birthdateLabel;
@property (weak, nonatomic) IBOutlet UILabel *warningLabel;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UILabel *genderLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *genderPicker;
@property (weak, nonatomic) IBOutlet UILabel *lookingForLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *desiredGenderPicker;


@property User* user;

@end
