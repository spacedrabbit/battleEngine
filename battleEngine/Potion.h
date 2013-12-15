//
//  Potion.h
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "Consumable.h"

@interface Potion : Consumable

@property (nonatomic) NSString * potionSize;
@property (nonatomic) NSString * potionType;

- (Potion *) initPotion: (NSInteger) size withType: (NSInteger) potionType;

@end
