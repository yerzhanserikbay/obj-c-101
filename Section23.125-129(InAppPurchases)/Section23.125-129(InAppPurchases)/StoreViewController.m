//
//  StoreViewController.m
//  Section23.125-129(InAppPurchases)
//
//  Created by YS on 4/1/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "StoreViewController.h"
#import "ViewController.h"

@interface StoreViewController ()

@property (strong, nonatomic) ViewController *homeVC;

@end

@implementation StoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.productID = @"com.yerzhanserikbay.yesenisstudying.level2";
    self.buyButton.enabled = NO;
    self.buyButton.alpha = 0.5;

    [self getPurchasedID];
}


- (void)getPurchasedID {
    if ([SKPaymentQueue canMakePayments]) {
        SKProductsRequest *request = [[SKProductsRequest alloc] initWithProductIdentifiers:[NSSet setWithObject:self.productID]];
        request.delegate = self;
        [request start];
    } else {
        self.productDesription.text = @"Please enable IAP in your settings";
    }
}

- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response {
    NSArray *products = response.products;
    
    if (products.count != 0) {
        self.product = products[0];
        self.productTitle.text = self.product.localizedTitle;
        self.productDesription.text = self.product.localizedDescription;
        
        self.buyButton.enabled = YES;
        self.buyButton.alpha = 1;
    } else {
        self.productDesription.text = @"Product not found";
    }
    
    products = response.invalidProductIdentifiers;
    
    for (SKProduct *product in products) {
        NSLog(@"%@", product);
    }
}


- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray<SKPaymentTransaction *> *)transactions {
    for (SKPaymentTransaction *transaction in transactions) {
        switch (transaction.transactionState) {
            case SKPaymentTransactionStatePurchased:
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                self.productDesription.text = @"The product was purchased";
                
                [self.homeVC purchased];
                
                [self.buyButton setTitle:@"Purchased" forState:UIControlStateNormal];
                self.buyButton.enabled = NO;
                self.buyButton.alpha = 0.5;
                break;
            case SKPaymentTransactionStateFailed:
                [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
                self.productDesription.text = @"The product not purchased";
                break;
            default:
                break;
        }
    }
}
    
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buyButtonAction:(id)sender {
    SKPayment *payment = [SKPayment paymentWithProduct:self.product];
    [[SKPaymentQueue defaultQueue] addPayment:payment];
}

- (IBAction)restoreButtonAction:(id)sender {
    [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
    [[SKPaymentQueue defaultQueue] restoreCompletedTransactions];
}


@end
