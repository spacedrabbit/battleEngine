//
//  MonstersNPC.h
//  battleEngine
//
//  Created by Paul Park on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Unit.h"

@interface MonstersNPC : Unit

-(void)generateRandomMonster;
-(void)encounterExperience: (Unit *)f;
-(void)CompensateLevelOne;

@end
