//
//  Container.h
//  SurviveDetroit2
//
//  Created by Louis Tur on 12/13/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "Item.h"

@interface Container : Item

@property (nonatomic) int slotSize;
@property (nonatomic, strong) NSString * materialType;
@property (nonatomic, strong) NSCountedSet *bagContents;

- (NSUInteger) bagSize;
- (id) initBagWith: (NSUInteger) material withSlots: (int) numOfSlots;
- (BOOL) removeItemFromBag: (Item *) item;
- (BOOL) addItemToBag: (Item *) item;
- (NSString *) displayBag;

- (Container *)getBag;
- (NSArray *) arrayOfBagContents;

@end
