//
//  HelloWorldScene.m
//
//  Created by : Andrey Volodin
//  Project    : CCPotentioMeterDemo
//  Date       : 05.12.15
//
//  Copyright (c) 2015 Andrey Volodin.
//  All rights reserved.
//
// -----------------------------------------------------------------

#import "HelloWorldScene.h"
#import "CCDirector.h"


// -----------------------------------------------------------------------

@implementation HelloWorldScene

- (id)init {
    if ((self = [super init])) {
        self.valueLabel             = [CCLabelTTF labelWithString:@"" fontName:@"Helvecitca" fontSize:17.0];
        _valueLabel.positionType    = CCPositionTypeNormalized;
        _valueLabel.position        = ccp(0.5, 0.3);
        [self addChild:_valueLabel];
        
        // Add the slider
        self.potentiometer          = [CCControlPotentiometer potentiometerWithTrackFile:@"potentiometerTrack.png"
                                                                            progressFile:@"potentiometerProgress.png"
                                                                               thumbFile:@"potentiometerButton.png"];
        _potentiometer.positionType  = CCPositionTypeNormalized;
        _potentiometer.position      = ccp(0.5, 0.5);
        _potentiometer.value         = 0.0f;
        _potentiometer.continuous    = YES;
        [_potentiometer setTarget:self selector:@selector(potentiometerTriggeredAction:)];
        
        [self addChild:_potentiometer];
        
    }
    return self;
}

-(void)potentiometerTriggeredAction:(CCControlPotentiometer*)sender {
    self.valueLabel.string = [NSString stringWithFormat:@"%.02f", sender.value];
}

- (void)onEnterTransitionDidFinish {
    [super onEnterTransitionDidFinish];
    
    [_potentiometer setValue:0.25f animated:YES];
}
@end























// why not add a few extra lines, so we dont have to sit and edit at the bottom of the screen ...
