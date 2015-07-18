#import "gui.h"
#import "consts.h"
@implementation gui

@synthesize contentScaleFactor;


+ (UIButton *) create_buttonInView:(UIView*)view text:(NSString *)text fontSize:(CGFloat)fontSize tag:(int)tag colour:(UIColor*)colour x:(float)x y:(float)y w:(float)w h:(float)h {
	UIButton * button;
	button = [UIButton buttonWithType:UIButtonTypeCustom];
	button.tag = tag;
	[button setTitle:text forState:UIControlStateNormal];
//   [button addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
	[button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
	[button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
	[button setTitleColor:[UIColor grayColor] forState:UIControlStateDisabled];
	button.frame = CGRectMake(x, y, w, h);
	button.backgroundColor = colour;
//	button.titleLabel.font = [UIFont systemFontOfSize:size];
	button.titleLabel.font = [UIFont fontWithName:AVENIR_LIGHT size:fontSize];
//  button.titleLabel.font = [UIFont fontWithName:@"RobotoSlab-Regular" size:size];
	button.layer.borderColor = [UIColor blackColor].CGColor;
	button.layer.borderWidth = 1;
	button.layer.shadowColor = [UIColor blackColor].CGColor;
	button.layer.cornerRadius = 2;
	button.layer.shadowRadius = 2;
    button.layer.shadowOffset = CGSizeMake(4.0f, 4.0f);
    button.layer.shadowOpacity = 0.25;
	[view addSubview:button];
    return button;
}

+(UIButton *) create_element :(UIView*)view :(NSString *)text :(int)tag :(float)x :(float)y {
	UIButton* button;
	button = [UIButton buttonWithType:UIButtonTypeCustom];
	button.tag = tag;
	[button setTitle:text forState:UIControlStateNormal];
	//   [button addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
	[button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
	[button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
	[button setTitleColor:[UIColor grayColor] forState:UIControlStateDisabled];
	float w, h;
	if (!tag) {
		w = 2 * ELEMENT_WIDTH + H_GAP;
		h = 2 * ELEMENT_HEIGHT + V_GAP;
	} else {
		w = ELEMENT_WIDTH;
		h = ELEMENT_HEIGHT;
	}
	button.frame = CGRectMake(x, y, w, h);
//	button.titleLabel.font = [UIFont systemFontOfSize:20];
	button.layer.borderColor = [UIColor blackColor].CGColor;
	button.layer.borderWidth = 1;
	button.layer.shadowColor = [UIColor blackColor].CGColor;
	button.layer.cornerRadius = 2;
	button.layer.shadowRadius = 2;
	button.layer.shadowOffset = CGSizeMake(4.0f*SCALE, 4.0f*SCALE);
	button.layer.shadowOpacity = 0.25;
	[view addSubview:button];
	return button;
}

+(UIButton *) create_tab_button :(NSString *)text :(int)tag :(float)x :(float)y :(float)w :(float)h{
    UIButton * button;
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.tag = tag;
    [button setTitle:text forState:UIControlStateNormal];
    //   [button addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitleColor:NO_COLOUR forState:UIControlStateNormal];
    [button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    [button setTitleColor:[UIColor grayColor] forState:UIControlStateDisabled];
    button.frame = CGRectMake  (x, y, w, h);
    //    button.backgroundColor=[UIColor grayColor];
    button.backgroundColor=NO_COLOUR;
    button.titleLabel.font = [UIFont fontWithName:@"RobotoSlab-Regular" size:SCALE*35];
    button.layer.borderColor = NO_COLOUR.CGColor;
    button.layer.borderWidth = 4*SCALE;
    button.layer.shadowColor = [UIColor blackColor].CGColor;
    button.layer.cornerRadius = 0*SCALE;//20*SCALE;
    button.layer.shadowRadius = 2*SCALE;
    button.layer.shadowOffset = CGSizeMake(4.0f*SCALE, 4.0f*SCALE);
    button.layer.shadowOpacity = 0.25;
    // [self.view addSubview:button];
    return button;
}

+(UIButton *) create_element_button :(NSString *)text :(int)tag :(float)x :(float)y :(float)w :(float)h{
    UIButton * button;
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.tag = tag;
    [button setTitle:text forState:UIControlStateNormal];
    //   [button addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitleColor:NO_COLOUR forState:UIControlStateNormal];
    [button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    [button setTitleColor:[UIColor grayColor] forState:UIControlStateDisabled];
    button.frame = CGRectMake  (x, y, w, h);
    //    button.backgroundColor=[UIColor grayColor];
    button.backgroundColor=NO_COLOUR;
    button.titleLabel.font = [UIFont fontWithName:@"RobotoSlab-Regular" size:SCALE*35];
    button.layer.borderColor=NO_COLOUR.CGColor;
    button.layer.borderWidth=4*SCALE;
    button.layer.shadowColor = [UIColor blackColor].CGColor;
    button.layer.cornerRadius = 0*SCALE;//20*SCALE;
    button.layer.shadowRadius = 2*SCALE;
    button.layer.shadowOffset = CGSizeMake(4.0f*SCALE, 4.0f*SCALE);
    button.layer.shadowOpacity = 0.25;
    // [self.view addSubview:button];
    return button;
}

+ (UIButton *) create_numpad_button :(NSString *)text :(int)tag :(float)x :(float)y :(float)w :(float)h{
    UIButton * button;
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.tag = tag;
    [button setTitle:text forState:UIControlStateNormal];
    //    [button addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake  (x, y, w, h);
    button.titleLabel.font = [UIFont fontWithName:@"Roboto-Regular" size:SCALE*40];

    //button.layer.borderColor=NUMPAD_ENABLED_BUTTON_BORDER_COLOR.CGColor;
    button.layer.borderWidth=2*SCALE;
//  button.layer.shadowColor = [UIColor blackColor].CGColor;
//  button.layer.cornerRadius = 50*SCALE;
    button.layer.shadowRadius = 2*SCALE;
    button.layer.shadowOffset = CGSizeMake(4.0f*SCALE, 4.0f*SCALE);
    button.layer.shadowOpacity = 0.25;
    // [self.view addSubview:button];
    return button;
}

+ (UILabel *) create_label :(UIView*)view :(NSString *)text :(CGFloat)textSize :(int)tag :(float)x :(float)y :(float)w :(float)h {
    UILabel* label;
    label = [[UILabel alloc] initWithFrame:CGRectMake(x,y,w,h)];
    label.tag = tag;
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor=[UIColor clearColor];
    label.text = text;
    label.textColor = [UIColor blackColor];
	[label setFont:[UIFont fontWithName:AVENIR size:textSize]];
	[view addSubview:label];
    return label;
}

+(UILabel *) create_element_label :(NSString *)text :(CGFloat)textSize :(int)tag :(float)x :(float)y :(float)w :(float)h {
    UILabel * label;
    label = [[UILabel alloc] initWithFrame:CGRectMake(x,y,w,h)];
    label.tag = tag;
    label.textAlignment = NSTextAlignmentCenter;
//    label.backgroundColor=ELEMENT_BUTTON_COLOR;
    label.text = text;
//    label.textColor = ELEMENT_BUTTON_FONT_COLOR;
    label.font = [UIFont fontWithName:@"Roboto-Bold" size:SCALE*40];
    return label;

}
+(UILabel *) create_z_label :(NSString *)text :(int)tag :(float)x :(float)y :(float)w :(float)h {
    UILabel * label;
    label = [[UILabel alloc] initWithFrame:CGRectMake(x,y,w,h)];
    label.tag = tag;
    label.textAlignment = NSTextAlignmentLeft;
    label.backgroundColor=[UIColor clearColor];
    label.text = text;
//    label.textColor = ELEMENT_BUTTON_FONT_COLOR;
    label.font = [UIFont fontWithName:@"Roboto-Regular" size:SCALE*16];
    return label;
}

+ (UITextField*) createTextFieldInView: (UIView*)view hint:(NSString*)hint tag:(int)tag x:(float) x y:(float) y width:(float) width height:(float) height {
	UITextField* textField;
	textField = [[UITextField alloc] initWithFrame:CGRectMake(x, y, width, height)];
	textField.tag = tag;
	textField.textAlignment = NSTextAlignmentLeft;
	textField.backgroundColor = [UIColor whiteColor];
	textField.text = hint;
	textField.textColor = [UIColor blackColor];
	[textField setFont:[UIFont fontWithName:AVENIR size:20]];
	[view addSubview:textField];
	
	return textField;
}

+ (void) animateButton :(UIButton*)button {
	//The following algorithm is adapted from: http://stackoverflow.com/a/3147168/4041237
	button.transform = CGAffineTransformMakeScale(1.25, 1.25);
	[UIView beginAnimations:@"button" context:nil];
	[UIView setAnimationDuration:0.1];
	button.transform = CGAffineTransformMakeScale(1, 1);
	[UIView commitAnimations];
}

CGFloat fitStringToLabel(NSString* string, NSString* fontName, UILabel* label) {
	CGFloat fontSize = 1;
	CGFloat stringWidth, stringHeight;
	CGFloat width = label.frame.size.width;
	CGFloat height = label.frame.size.height;
	do {
		fontSize++;
		stringWidth = [string sizeWithFont:[UIFont fontWithName:fontName size:fontSize]].width;
		stringHeight = [string sizeWithFont:[UIFont fontWithName:fontName size:fontSize]].height;
	} while ((stringWidth < width) && (stringHeight < height));
	
	return fontSize - 1;
}

CGFloat fitStringToButton(NSString* string, NSString* fontName, UIButton* button) {
	CGFloat fontSize = 1;
	CGFloat stringWidth, stringHeight;
	CGFloat width = button.frame.size.width;
	CGFloat height = button.frame.size.height;
	do {
		fontSize++;
		stringWidth = [string sizeWithFont:[UIFont fontWithName:fontName size:fontSize]].width;
		stringHeight = [string sizeWithFont:[UIFont fontWithName:fontName size:fontSize]].height;
	} while ((stringWidth < width) && (stringHeight < height));
	
	return fontSize - 3;
}

@end
