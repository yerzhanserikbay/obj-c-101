//
//  DetailViewController.h
//  Section14.90(ImageGalleryCollectionViewPList)
//
//  Created by YS on 3/28/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *detailTitle;
@property (weak, nonatomic) IBOutlet UILabel *subtitle;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (strong, nonatomic) NSArray *detailModal;

@end

NS_ASSUME_NONNULL_END
