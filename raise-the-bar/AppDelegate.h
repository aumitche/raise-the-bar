//
//  AppDelegate.h
//  raise-the-bar
//
//  Created by Mitchell Au on 2015–07–18.
//  Copyright (c) 2015 GARY. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Braintree/Braintree.h>
#import "User.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UIImage* profile;		//Profile picture

@property User* user;


@end

