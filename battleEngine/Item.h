//
//  Item.h
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Unit.h"

@interface Item : NSObject

@property (nonatomic) NSUInteger sellPrice;
@property (nonatomic) NSUInteger resellPrice;
@property (nonatomic) NSUInteger stackSize;//set to 0 no stack

@property (nonatomic, strong, setter = uniqueName:) NSString * name;

+ (NSArray *) weaponWordBank;
+ (NSArray *) bagMaterials;
+ (NSArray *) sizes;
+ (NSArray *) type;

@end
