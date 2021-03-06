//
//  Consumable.h
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "Item.h"

// Consumabe objects conform to this protocol. Must be defined
@protocol Consumbable <NSObject>

- (void) useItemOn: (Unit *) unit;

@end

@interface Consumable : Item

@end
