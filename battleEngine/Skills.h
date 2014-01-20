//
//  Skills.h
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Unit.h"

@interface Skills : Unit

-(void)magicMissle:(Unit *)f;
-(void)fireball:(Unit *)f;


-(void)disarm:(Unit *)f;
-(void)bullRush:(Unit *)f;

-(void)dirtyTrick:(Unit *)f;
-(void)backstab:(Unit *)f;

/*
 // test
 Skills *player = [[Skills alloc]init];
 [player setUnitStatsHealth:250 Mana:100 AttackPower:40 Defense:60 MagicPwr:60 MagicResist:50 EXP:5 Level:2 ];
 
 Creatures *monster = [[Creatures alloc]init];
 [monster setUnitStatsHealth:250 Mana:100 AttackPower:40 Defense:30 MagicPwr:60 MagicResist:30 EXP:5 Level:2];
 
 [player disarm:monster];
*/

@end



