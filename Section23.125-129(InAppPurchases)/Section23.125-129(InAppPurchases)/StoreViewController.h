//
//  StoreViewController.h
//  Section23.125-129(InAppPurchases)
//
//  Created by YS on 4/1/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <StoreKit/StoreKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StoreViewController : UIViewController <SKPaymentTransactionObserver, SKProductsRequestDelegate>

@property (strong, nonatomic) SKProduct *product;
@property (strong, nonatomic) NSString *productID;


@property (weak, nonatomic) IBOutlet UILabel *productTitle;
@property (weak, nonatomic) IBOutlet UITextView *productDesription;
@property (weak, nonatomic) IBOutlet UIButton *buyButton;

- (IBAction)buyButtonAction:(id)sender;
- (IBAction)restoreButtonAction:(id)sender;

@end

NS_ASSUME_NONNULL_END
