//
//  Consumable.h
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "Item.h"

@protocol Consumbable <NSObject>

- (void) use: (Unit *) unit;

@end

@interface Consumable : Item

@end