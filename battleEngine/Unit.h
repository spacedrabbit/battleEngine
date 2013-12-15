//
//  Unit.h
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Unit : NSObject

//@property (nonatomic) NSUInteger healthPoints;

@property NSUInteger healthPoints;
@property NSUInteger manaPoints;
@property NSUInteger attackPower;
@property NSUInteger defensePower;
@property NSUInteger magicPower;
@property NSUInteger magicDefense;
@property NSUInteger experiencePoints;
@property NSUInteger level;
@property (nonatomic, strong)Unit *warrior;


-(void) setUnitStatsHealth:(NSUInteger)Hp Mana:(NSUInteger)Mp AttackPower:(NSUInteger)Atk Defense:(NSUInteger)Def MagicPwr:(NSUInteger)magicP MagicResist:(NSUInteger)MagicDef;

-(void)levelUp;

-(void)makeWarrior:(Unit *)f;


@end
