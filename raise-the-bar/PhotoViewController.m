//
//  PhotoViewController.m
//  raise-the-bar
//
//  Created by Mitchell Au on 2015–07–18.
//  Copyright (c) 2015 GARY. All rights reserved.
//

#import "PhotoViewController.h"

@interface PhotoViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate> {
	AppDelegate* delegate;
}

@end

@implementation PhotoViewController

@synthesize imageView;

- (void)viewDidLoad {
    [super viewDidLoad];
	
	delegate = (AppDelegate*) [[UIApplication sharedApplication] delegate];
	
	UIImagePickerController* pickerLibrary = [[UIImagePickerController alloc] init];
	pickerLibrary.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
	pickerLibrary.delegate = self;
	[self presentModalViewController:pickerLibrary animated:YES];
 
}

- (void) imagePickerController:(UIImagePickerController*)picker didFinishPickingImage:(UIImage*)image editingInfo:(NSDictionary*)editingInfo {
	delegate.profile = image;
	[picker dismissViewControllerAnimated:YES completion:NULL];
	imageView.image = image;
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
