//
//  Drink.m
//  raise-the-bar
//
//  Created by Mitchell Au on 2015–07–18.
//  Copyright (c) 2015 GARY. All rights reserved.
//

#import "Drink.h"

@implementation Drink

- (id) initWithName:(NSString*)_name price:(double)_price quantity:(int)_quantity {
	self.name = _name;
	self.price = _price;
	self.quantity = _quantity;
	
	return self;
}

@end
