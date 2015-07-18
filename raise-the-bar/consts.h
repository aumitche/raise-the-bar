//
//  consts.h
//  ptable
//
//  Created by Mitchell Au on 2015–05–21.
//  Copyright (c) 2015 Mitchell Au. All rights reserved.
//

//This header file contains constants needed for drawing UI elements.

#ifndef ptable_consts_h
#define ptable_consts_h

//Ad constants
#define FREE YES //Bool to distinguish whether the app is running the free version
#define AD_ID @"ca-app-pub-2734087962752348/7988321115"
#define AD_GAP (delegate.fullVersion ? 0 : 58)

#define SCREEN_BOUNDS [[UIScreen mainScreen] nativeBounds]

//Determine the scaling factor depending on the device that the app is running on
#define FACTOR ([[UIScreen mainScreen] scale])

#define SCREEN_HEIGHT (SCREEN_BOUNDS.size.height/FACTOR)
#define SCREEN_WIDTH (SCREEN_BOUNDS.size.width/FACTOR)

#define REF_SCREEN_WIDTH 1024
#define REF_SCREEN_HEIGHT 768
#define LEFT_MARGIN 8
#define RIGHT_MARGIN SCREEN_WIDTH-8
#define TOP_MARGIN (8 + 15 * FACTOR) //This takes into account the navigation bar, which has a height of 44 points.
#define BOTTOM_MARGIN (SCREEN_HEIGHT-8)
#define USABLE_WIDTH (SCREEN_WIDTH-16)
#define USABLE_HEIGHT (SCREEN_HEIGHT-16)

#define BOTTOM_MARGIN_ADS (BOTTOM_MARGIN - AD_GAP)
#define USABLE_HEIGHT_ADS (USABLE_HEIGHT - AD_GAP)
#define SCALE SCREEN_WIDTH/REF_SCREEN_WIDTH

//Sizes for the periodic table
#define ELEMENT_WIDTH (USABLE_WIDTH*0.9/18)
#define ELEMENT_HEIGHT (USABLE_HEIGHT*0.75/9)
#define H_GAP (USABLE_WIDTH*0.1/17)
#define V_GAP (USABLE_HEIGHT*0.1/8)

#define IPAD [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad
#define IPHONE [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone
#define IPHONE6PLUS (FACTOR == 3)
#define IPHONE4S (SCREEN_WIDTH == 480.000000)

//Some colours
//Source for element colours: www.ptable.com
#define ALKALI_COLOUR [UIColor colorWithRed: 255.0/255.0 green: 204.0/255.0 blue: 48.0/255.0 alpha: 0.5]
#define ALKALINE_EARTH_COLOUR [UIColor colorWithRed: 251.0/255.0 green: 255.0/255.0 blue: 65.0/255.0 alpha: 0.5]
#define TRANSITION_COLOUR [UIColor colorWithRed: 215.0/255.0 green: 179.0/255.0 blue: 179.0/255.0 alpha: 0.5]
#define POST_TRANSITION_COLOUR [UIColor colorWithRed: 153.0/255.0 green: 222.0/255.0 blue: 204.0/255.0 alpha: 0.5]
#define METALLOID_COLOUR [UIColor colorWithRed: 121.0/255.0 green: 220.0/255.0 blue: 138.0/255.0 alpha: 0.5]
#define NONMETAL_COLOUR [UIColor colorWithRed: 24.0/255.0 green: 255.0/255.0 blue: 28.0/255.0 alpha: 0.5]
#define HALOGEN_COLOUR [UIColor colorWithRed: 50.0/255.0 green: 230.0/255.0 blue: 203.0/255.0 alpha: 0.5]
#define INERT_GAS_COLOUR [UIColor colorWithRed: 122.0/255.0 green: 199.0/255.0 blue: 255.0/255.0 alpha: 0.5]
#define LANTHANOID_COLOUR [UIColor colorWithRed: 251.0/255.0 green: 195.0/255.0 blue: 163.0/255.0 alpha: 0.5]
#define ACTINOID_COLOUR [UIColor colorWithRed: 234.0/255.0 green: 188.0/255.0 blue: 221.0/255.0 alpha: 0.5]
#define NO_COLOUR [UIColor colorWithRed: 100.0/255.0 green: 100.0/255.0 blue: 100.0/255.0 alpha: 0.3]
#define TRANSPARENT_COLOUR [UIColor colorWithRed: 255.0/255.0 green: 255.0/255.0 blue: 255.0/255.0 alpha: 0.0]

//Fonts used in the app
#define AVENIR @"Avenir-Book"
#define AVENIR_BOLD @"Avenir-Medium"
#define AVENIR_LIGHT @"Avenir-Light"
#define BODONI_ITALIC @"BodoniSvtyTwoITCTT-BookIta"
#define CARTA @"CartaStd"
#define ENTYPO @"Entypo"
#define ORATOR @"OratorStd"

//Constants in the game
#define MAX_PASSES 5

#endif
