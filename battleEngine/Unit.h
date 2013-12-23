//
//  Unit.h
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Unit : NSObject

//I added these two for testing - Louis
@property (nonatomic) NSUInteger maxHealthPoints;
@property (nonatomic) NSUInteger maxManaPoints;
//

@property (nonatomic) long healthPoints;
@property (nonatomic) long manaPoints;
@property (nonatomic) long attackPower;
@property (nonatomic) long defensePower;
@property (nonatomic) long magicPower;
@property (nonatomic) long magicDefense;
@property (nonatomic) NSUInteger experiencePoints;
@property (nonatomic) NSUInteger level;
@property (nonatomic, strong)Unit *warrior;
@property (nonatomic, strong)Unit *mage;
@property (nonatomic, strong)Unit *rogue;


-(void) setUnitStatsHealth:(long)Hp Mana:(long)Mp AttackPower:(long)Atk Defense:(long)Def MagicPwr:(long)magicP MagicResist:(long)MagicDef EXP:(NSUInteger)Exp Level:(NSUInteger)lvl;

-(void)levelUp;
-(void)CompensateLevel:(Unit *)target;
-(void)encounterExperience: (Unit *)f;
-(void)listStats;

-(void)attack:(Unit *) target;

-(void)generateWarrior;
-(void)generateMage;
-(void)generateRogue;


- (id)initWarriorWithStats:(NSString*)name;
- (id)initMageWithStats:(NSString*)name;
- (id)initRogueWithStats:(NSString*)name;

@end
