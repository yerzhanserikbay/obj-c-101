//
//  ViewController.m
//  Section6.43(Random Car Statistics)
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


- (IBAction)randomCar:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"RandomCars" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    NSMutableArray *array = dict[@"Cars"];
    
    int randomNum = arc4random() % [array count];
    NSDictionary *dataSelect = array[randomNum];
    
    self.image.image = [UIImage imageNamed:dataSelect[@"Image"]];
    self.labelOne.text = dataSelect[@"Name"];
    self.labelTwo.text = [NSString stringWithFormat:@"Top Speed: %@", dataSelect[@"Top Speed"]];
    self.labelThree.text = [NSString stringWithFormat:@"0-60: %@", dataSelect[@"0-60"]];
    self.labelFour.text = [NSString stringWithFormat:@"BHP: %@", dataSelect[@"BHP"]];
    self.labelFive.text = [NSString stringWithFormat:@"MPG: %@", dataSelect[@"MPG"]];
    self.labelSix.text = [NSString stringWithFormat:@"Price: %@", dataSelect[@"Price"]];
    
}

@end
