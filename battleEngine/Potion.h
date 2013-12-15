//
//  Potion.h
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "Consumable.h"

@interface Potion : Consumable <Consumbable>

@property (nonatomic) NSInteger potionSize;
@property (nonatomic) NSInteger potionType;
@property (nonatomic, strong) NSMutableDictionary * properties;

- (Potion *) initPotion: (NSInteger) size withType: (NSInteger) potionType;

- (NSInteger) hitPoints;
@end
