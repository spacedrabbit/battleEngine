//
//  Skills.h
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Unit.h"

@interface Skills : NSObject

@property NSUInteger magicPower; // level 1 60 /  level 5 80
@property NSUInteger attackPower; // level 1 40 / level 5 60
@property NSUInteger magicDefense; // level 1 50 / level 5 75
@property NSUInteger defensePower; // level 1 60 / level 5 80
@property NSUInteger healthPoints; // level 1 250 / level 5 550
@property NSUInteger manaPoints; // level 1 100 / level 5 200
@property NSUInteger level;

-(void)magicMissle:(Unit *)f;
-(void)fireball:(Unit *)f;


-(void)disarm:(Unit *)f;
-(void)bullRush:(Unit *)f;

-(void)dirtyTrick:(Unit *)f;
-(void)backstab:(Unit *)f;


@end

// example Fireball does x base damage that is then modified by magic attack from the Unit class
// healthPoints max per level:
// healthPoints max per level:
// attackPower max per level:
// magicPower max per level:
// defensePower max per level:
// magicDefense max per level:


