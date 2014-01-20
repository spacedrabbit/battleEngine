//
//  Encounter.h
//  battleEngine
//
//  Created by Louis Tur on 12/23/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Unit.h"
#import "Potion.h"
#import "Sword.h"
#import "Container.h"

@interface Encounter : NSObject

@property (nonatomic) NSInteger expGain;
@property (nonatomic) NSInteger goldGain;
@property (nonatomic) NSInteger turnNumber;
@property (nonatomic, strong) Container * randomDrop;
@property (nonatomic, strong) Unit * randomCreature;
@property (nonatomic, strong) Unit * player;
@property (nonatomic, strong) Unit * creature;

- (void) beginEncounterBetween: (Unit *) player and: (Unit *) creature;
- (Container *) generateLoot;
-(void) basicAttackOn;

@end
