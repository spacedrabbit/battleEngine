//
//  Unit.h
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Unit : NSObject

@property (nonatomic) NSUInteger healthPoints;
@property (nonatomic) NSUInteger manaPoints;
@property (nonatomic) NSUInteger attackPower;
@property (nonatomic) NSUInteger defensePower;
@property (nonatomic) NSUInteger magicPower;
@property (nonatomic) NSUInteger magicDefense;
@property (nonatomic) NSUInteger experiencePoints;
@property (nonatomic) NSUInteger level;
@property (nonatomic, strong)Unit *warrior;
@property (nonatomic, strong)Unit *mage;
@property (nonatomic, strong)Unit *rogue;


-(void) setUnitStatsHealth:(NSUInteger)Hp Mana:(NSUInteger)Mp AttackPower:(NSUInteger)Atk Defense:(NSUInteger)Def MagicPwr:(NSUInteger)magicP MagicResist:(NSUInteger)MagicDef EXP:(NSUInteger)Exp Level:(NSUInteger)lvl;

-(void)levelUp;

-(void)listStats;

-(void)generateWarrior;
-(void)generateMage;
-(void)generateRogue;


- (id)initWarriorWithStats:(NSString*)name;
- (id)initMageWithStats:(NSString*)name;
- (id)initRogueWithStats:(NSString*)name;

@end
