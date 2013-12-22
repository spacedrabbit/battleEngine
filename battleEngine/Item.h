//
//  Item.h
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Unit.h"
#define LESSER NSMakeRange(20,75);
#define MINOR NSMakeRange(200,110);
#define NORMAL NSMakeRange(400,150);
#define GREATER NSMakeRange(700,250);
#define TITAN NSMakeRange(1000,500);

@interface Item : NSObject

@property (nonatomic) NSUInteger sellPrice;
@property (nonatomic) NSUInteger resellPrice;
@property (nonatomic) NSUInteger stackSize;//set to 0 no stack

/* Created a typedef enum to correspond to the NSArray of possible item types
  Later, this enum is used to determine the type of potion when useItemOn: is called. 
 */
typedef enum potionTypeGuide {
                        Health = 0,
                        Mana = 1,
                        Defense = 2
} statGuide;

typedef enum statTypeGuide {
                        Attack = 0,
                        PhysicalDefense = 1,
                        MagicResist = 2,
                        MagicAttack = 3,
                        Experience= 4,
} statTypeGuide;

typedef enum potionSizeGuide {
                        Minor = 0,
                        Lesser = 1,
                        Normal = 2,
                        Greater = 3,
                        Titan = 4
}potionSizeGuide;

typedef enum clothMaterials {
                        Linen = 0,
                        Wool = 1,
                        Mageweave = 2,
                        Netherweave = 3,
                        Rune = 4,
} clothMaterials;

typedef enum statTypes {
                        healthPoints,
                        manaPoints,
                        attackPower,
                        magicPower,
                        defensePower,
                        magicDefense,
}statTypes;

typedef struct _potionSizes {
    NSRange lesserPotion;
    NSRange minorPotion;
    NSRange normalPotion;
    NSRange greaterPotion;
    NSRange titanPotion;
}potionSizeRanges;

@property (nonatomic) potionSizeRanges potionSizes;
@property (nonatomic, strong, setter = uniqueName:) NSString * name;

+ (NSArray *) weaponWordBank;
+ (NSArray *) bagMaterials;
+ (NSArray *) sizes;
+ (NSArray *) type;

@end
