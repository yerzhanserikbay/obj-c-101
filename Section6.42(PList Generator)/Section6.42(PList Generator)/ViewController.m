//
//  ViewController.m
//  Section6.42(PList Generator)
//
//  Created by YS on 3/25/19.
//  Copyright © 2019 YS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)button:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"RandomImage" ofType:@"plist"];
    
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    NSMutableArray *array = dict[@"Images"];
    
    int randomNum = arc4random() % array.count;
    self.imageView.image = [UIImage imageNamed:array[randomNum]];
}

@end
