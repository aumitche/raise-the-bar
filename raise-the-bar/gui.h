
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface gui :NSObject
@property CGFloat contentScaleFactor;

+ (UIButton *) create_buttonInView:(UIView*)view text:(NSString *)text fontSize:(CGFloat)size tag:(int)tag colour:(UIColor*)colour x:(float)x y:(float)y w:(float)w h:(float)h;
+ (UIButton*) create_element :(UIView*)view :(NSString*)text :(int)tag :(float)x :(float)y;
+ (UIButton*) create_tab_button :(NSString*)text :(int)tag :(float)x :(float)y :(float)w :(float)h;
+ (UIButton*) create_element_button :(NSString*)text :(int)tag :(float)x :(float)y :(float)w :(float)h;
+ (UIButton*) create_numpad_button :(NSString*)text :(int)tag :(float)x :(float)y :(float)w :(float)h;
+ (UILabel*) create_label :(UIView*)view :(NSString*)text :(CGFloat)textSize :(int)tag :(float)x :(float)y :(float)w :(float)h;
+ (UILabel*) create_element_label :(NSString *)text :(CGFloat)textSize :(int)tag :(float)x :(float)y :(float)w :(float)h;
+ (UILabel*) create_z_label :(NSString*)text :(int)tag :(float)x :(float)y :(float)w :(float)h;
+ (void) animateButton :(UIButton*)button;
CGFloat fitStringToLabel(NSString* string, NSString* fontName, UILabel* label);
CGFloat fitStringToButton(NSString* string, NSString* fontName, UIButton* button);

@end
