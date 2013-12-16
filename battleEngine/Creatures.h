//
//  Creatures.h
//  battleEngine
//
//  Created by Paul Park on 12/15/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Unit.h"

@interface Creatures : Unit

-(void)generateRandomMonster;
-(void)encounterExperience: (Unit *)f;
-(void)CompensateLevelOne;
-(void)CompensateLevelTwo;
-(void)CompensateLevelThree;
-(void)CompensateLevelFour;
-(void)CompensateLevelFive;

@end
