//
//  TableViewCell.h
//  Section19.108-111(LondonLandmarks)
//
//  Created by YS on 3/29/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *cellTitle;
@property (weak, nonatomic) IBOutlet UILabel *cellAddress;
@property (weak, nonatomic) IBOutlet UIImageView *cellImage;

@end

NS_ASSUME_NONNULL_END
