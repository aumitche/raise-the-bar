//
//  ViewController.m
//  raise-the-bar
//
//  Created by Mitchell Au on 2015–07–18.
//  Copyright (c) 2015 GARY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
	AppDelegate* delegate;
}

@end

@implementation ViewController

@synthesize nameLabel;
@synthesize firstNameTextField;
@synthesize lastNameTextField;
@synthesize birthdateLabel;
@synthesize warningLabel;
@synthesize datePicker;
@synthesize genderLabel;
@synthesize genderPicker;
@synthesize lookingForLabel;
@synthesize desiredGenderPicker;

- (void)viewDidLoad {
	[super viewDidLoad];
	delegate = (AppDelegate*) [[UIApplication sharedApplication] delegate];
	
	nameLabel.font = [UIFont fontWithName:AVENIR size:fitStringToLabel(@"Name", AVENIR, nameLabel)];
	birthdateLabel.font = [UIFont fontWithName:AVENIR size:fitStringToLabel(@"Date of Birth", AVENIR, birthdateLabel)];
	warningLabel.font = [UIFont fontWithName:AVENIR size:fitStringToLabel(@"You must be 19 years of age", AVENIR, warningLabel)];
	genderLabel.font = [UIFont fontWithName:AVENIR size:fitStringToLabel(@"I am a…", AVENIR, genderLabel)];
	lookingForLabel.font = [UIFont fontWithName:AVENIR size:fitStringToLabel(@"I'm looking for…", AVENIR, lookingForLabel)];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue*)segue sender:(id)sender {
	if ([[segue identifier] isEqualToString:@"photoSegue"]) {
		UINavigationController* pvcNav = (UINavigationController*) segue.destinationViewController;
		PhotoViewController* pvc = (PhotoViewController*) pvcNav.topViewController;
		NSLog(@"Name: %@ %@\n", firstNameTextField.text, lastNameTextField.text);
		delegate.user.firstName = firstNameTextField.text;
		delegate.user.lastName = lastNameTextField.text;
		delegate.user.age = 19;
		delegate.user.gender = (int) genderPicker.selectedSegmentIndex;
		delegate.user.desiredGender = (int) desiredGenderPicker.selectedSegmentIndex;
	}
/*	if ([[segue identifier] isEqualToString:@"optionsSegue"]) {
		UINavigationController* ovcNav = (UINavigationController*) segue.destinationViewController;
		OptionsViewController* ovc = (OptionsViewController*) ovcNav.topViewController;
		//		ovc.option = option;
		//		NSLog(@"%d %d %d %d %d %d\n", ovc.option.colours, ovc.option.labels, ovc.option.numbers, ovc.option.symbols, ovc.option.fx, ovc.option.voiceover);
	} else if ([[segue identifier] isEqualToString:@"gameSegue"]) {
		GameViewController* gvc = (GameViewController*) segue.destinationViewController;
		//		gvc.option = option;
	} else if ([[segue identifier] isEqualToString:@"instructionsSegue"]) {
		//		UINavigationController* ivcNav = (UINavigationController*) segue.destinationViewController;
		//		InstructionsViewController* ivc = (InstructionsViewController*) ivcNav.topViewController;
	}
 */
}


@end
