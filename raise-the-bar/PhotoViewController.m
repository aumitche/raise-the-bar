//
//  PhotoViewController.m
//  raise-the-bar
//
//  Created by Mitchell Au on 2015–07–18.
//  Copyright (c) 2015 GARY. All rights reserved.
//

#import "PhotoViewController.h"

@interface PhotoViewController () {
	AppDelegate* delegate;
}

@end

@implementation PhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	delegate = (AppDelegate*) [[UIApplication sharedApplication] delegate];
	NSLog(@"%@\n%@\n%d\n%d\n%d\n", delegate.user.firstName, delegate.user.lastName, delegate.user.age, delegate.user.gender, delegate.user.desiredGender);
	
	UIImagePickerController* pickerLibrary = [[UIImagePickerController alloc] init];
	pickerLibrary.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
	pickerLibrary.delegate = self;
	[self presentModalViewController:pickerLibrary animated:YES];
}

- (void) imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary*)editingInfo
{
	UIImage* myImage = image;
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
