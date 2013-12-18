//
//  Sword.h
//  SurviveText
//
//  Created by Louis Tur on 12/8/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "Weapons.h"

@interface Sword : Weapons

@property (nonatomic, strong) NSDictionary * stats;

- (NSString *) swordStats;
+(NSArray *) validStats;

@end
