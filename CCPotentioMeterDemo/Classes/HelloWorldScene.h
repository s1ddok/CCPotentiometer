//
//  HelloWorldScene.h
//
//  Created by : Andrey Volodin
//  Project    : CCPotentioMeterDemo
//  Date       : 05.12.15
//
//  Copyright (c) 2015 Andrey Volodin.
//  All rights reserved.
//
// -----------------------------------------------------------------

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "CCPotentiometer.h"
#import "cocos2d-ui.h"

// -----------------------------------------------------------------------

@interface HelloWorldScene : CCScene

// -----------------------------------------------------------------------

- (instancetype)init;

@property (nonatomic, strong) CCPotentiometer    *potentiometer;

@property (nonatomic, strong) CCLabelTTF    *valueLabel;



@end


































