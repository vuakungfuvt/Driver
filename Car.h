//
//  Car.h
//  Driver
//
//  Created by ThanhTung on 3/24/13.
//  Copyright (c) 2013 THANHTUNG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject{
    int _numberWheel;
    NSString *_name;
    float _giatoc;
}
- (id)  init: (NSString*) name  //tham số cho firstName
andNumberWheel : (int) num
andAcceleration : (float) acceleration;
@property (nonatomic , assign) float _speed;
@property (nonatomic , assign) float _distance;
@property (nonatomic , assign) int _t0;
@property (nonatomic , strong) NSTimer* _timer;
@property (nonatomic , assign) float _acceleration;
-(void) brake;
-(void) speedUp;
-(void) start;
-(void) print;
-(void) constSpeed;
@end

