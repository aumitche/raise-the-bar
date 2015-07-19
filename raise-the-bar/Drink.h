//
//  Drink.h
//  raise-the-bar
//
//  Created by Mitchell Au on 2015–07–18.
//  Copyright (c) 2015 GARY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Drink : NSObject

@property NSString* name;
@property double price;
@property int quantity;

- (id) initWithName:(NSString*)_name price:(double)_price quantity:(int)_quantity;

@end
