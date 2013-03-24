//
//  ViewController.m
//  Driver
//
//  Created by ThanhTung on 3/24/13.
//  Copyright (c) 2013 THANHTUNG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(id) init{
    if (self == [super init]) {
        car = [[Car alloc]init:@"Xe toyota" andNumberWheel:4 andAcceleration:4.0];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    if (self == [super init]) {
        car = [[Car alloc]init:@"Xe toyota" andNumberWheel:4 andAcceleration:4.0];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)start:(id)sender {
    [car start];
}
- (IBAction)constSpees:(id)sender {
    [car constSpeed];
}
- (IBAction)speedUp:(id)sender {
    [car speedUp];
}
- (IBAction)brake:(id)sender {
    [car brake];
}
@end
