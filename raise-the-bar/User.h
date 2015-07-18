//
//  User.h
//  raise-the-bar
//
//  Created by Mitchell Au on 2015–07–18.
//  Copyright (c) 2015 GARY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property NSString* firstName;			//First name
@property NSString* lastName;			//Last name
@property int age;						//Age
@property int number;					//Phone number
@property int gender;					//Gender. 0 = male, 1 = female
@property int desiredGender;			//0 = male, 1 = female, 2 = both
@property NSMutableArray* music;		//An array of bools for different genres

@end
