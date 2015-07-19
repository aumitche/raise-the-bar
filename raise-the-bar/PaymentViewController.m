//
//  PaymentViewController.m
//  raise-the-bar
//
//  Created by Mitchell Au on 2015–07–18.
//  Copyright (c) 2015 GARY. All rights reserved.
//

#import "PaymentViewController.h"

@interface PaymentViewController () <BTDropInViewControllerDelegate>

@property (strong, nonatomic) Braintree* braintree;

@end

@implementation PaymentViewController

@synthesize braintree;

- (void)viewDidLoad {
    [super viewDidLoad];
	
	NSURL *clientTokenURL = [NSURL URLWithString:@"https://gentle-beyond-6326.herokuapp.com/client_token"];
	NSMutableURLRequest *clientTokenRequest = [NSMutableURLRequest requestWithURL:clientTokenURL];
	[clientTokenRequest setValue:@"text/plain" forHTTPHeaderField:@"Accept"];
	
	[NSURLConnection sendAsynchronousRequest:clientTokenRequest queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
		// TODO: Handle errors in [(NSHTTPURLResponse *)response statusCode] and connectionError
		NSString *clientToken = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
		
		// Initialize `Braintree` once per checkout session
		self.braintree = [Braintree braintreeWithClientToken:clientToken];
		
		// As an example, you may wish to present our Drop-In UI at this point.
		// Continue to the next section to learn more...
		//Create a BTDropInViewController
		BTDropInViewController* dropInViewCointroller = [braintree dropInViewControllerWithDelegate:self];
		
		//The way you present your BTDropInViewController instance is up to you.
		//In this example, we wrap it in a new, modally presented navigation controller:
		dropInViewCointroller.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(userDidCancelPayment)];
		UINavigationController* navigationController = [[UINavigationController alloc] initWithRootViewController:dropInViewCointroller];
		[self presentViewController:navigationController animated:YES completion:nil];
	}];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//The following methods are from the Braintree tutorials
/* With this example, you should ensure that your users cannot tap the pay button until
 * the client token has been obatined from your sever and has been used to create a
 * Braintree instance.
 */

- (IBAction)tappedMyPayButton {
	/* If you haven't already, create and retain a 'Braintree´ instance with the client token.
	 * Typically, you only need to do this once per session.
	 */
	
	//braintree = [Braintree braintreeWithClientToken:aClientToken];
	
}

- (void) userDidCancelPayment {
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (void) dropInViewController:(__unused BTDropInViewController *)viewController didSucceedWithPaymentMethod:(BTPaymentMethod *)paymentMethod {
	[self postNonceToServer:paymentMethod.nonce]; //Send payment method nonce to your server
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (void) dropInViewControllerDidCancel:(__unused BTDropInViewController *)viewController {
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (void) postNonceToServer:(NSString*) paymentMethodNonce {
	//Update URL with your server
	NSURL* paymentURL = [NSURL URLWithString:@"https://your-server.example.com/payment-methods"];
	NSMutableURLRequest* request = [NSMutableURLRequest requestWithURL:paymentURL];
	request.HTTPBody = [[NSString stringWithFormat:@"payment_method_nonce=%@", paymentMethodNonce] dataUsingEncoding:NSUTF8StringEncoding];
	[NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
		// TODO: Handle success and failure
	}];
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
