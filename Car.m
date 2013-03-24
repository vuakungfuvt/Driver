//
//  Car.m
//  Driver
//
//  Created by ThanhTung on 3/24/13.
//  Copyright (c) 2013 THANHTUNG. All rights reserved.
//

#import "Car.h"

@implementation Car
- (id)  init: (NSString*) name
andNumberWheel: (int) num
andAcceleration: (float) acceleration
{
    if (self == [super init]) {
        NSLog(@"Khoi dong xe %@",name);
        _name = name;
        _giatoc = acceleration;
        _numberWheel = num;
        self._t0 = 0;
        self._distance=0;
        self._speed=0;
    }
    return self;
}
-(void) brake{
    //self._t0++;
    [self._timer invalidate];
    self._timer = nil;
    self._acceleration = -_giatoc;
    if(!self._timer) {
        self._timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                       target:self
                                                     selector:@selector(print)
                                                     userInfo:nil
                                                      repeats:YES];
    } else {
        [self._timer invalidate];
        self._timer=nil;
    }
    
}
-(void) constSpeed{
    [self._timer invalidate];
    self._timer = nil;
    self._acceleration = 0;
    if(!self._timer) {
        self._timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                       target:self
                                                     selector:@selector(print)
                                                     userInfo:nil
                                                      repeats:YES];
    } else {
        [self._timer invalidate];
        self._timer=nil;
    }

}
-(void) speedUp{
    //self._t0++;
    [self._timer invalidate];
    self._timer = nil;
    self._acceleration = _giatoc;
    if(!self._timer) {
        self._timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                       target:self
                                                     selector:@selector(print)
                                                     userInfo:nil
                                                      repeats:YES];
    } else {
        [self._timer invalidate];
        self._timer=nil;
    }
}
-(void) start{
    //NSLog(@"Da dung lai");
    //self._t0++;
    //NSLog(@"%d",self._t0);
    [self._timer invalidate];
    self._timer = nil;
    self._acceleration = _giatoc;
    if(!self._timer) {
        self._timer = [NSTimer scheduledTimerWithTimeInterval:1
                                                       target:self
                                                     selector:@selector(print)
                                                     userInfo:nil
                                                      repeats:YES];
    } else {
        [self._timer invalidate];
        self._timer=nil;
    }
}
-(void) print{
    if (self._speed < 0) {
        NSLog(@"Da dung lai");
        [self._timer invalidate];
        self._timer = nil;
        self._speed = self._speed + self._acceleration;
        self._distance = self._distance + self._speed + self._acceleration/2;
    }
    else{
        self._t0++;
        NSLog(@"%d",self._t0);
        //self._speed = self._speed + self._acceleration;
        self._distance = self._distance + self._speed + self._acceleration/2;
        self._speed = self._speed + self._acceleration;
        NSLog(@"van toc hien tai: %f\nquang duong da di duoc: %f\n",self._speed,self._distance);
    }
}
@end
