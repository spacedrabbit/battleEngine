//
//  Container.m
//  SurviveDetroit2
//
//  Created by Louis Tur on 12/13/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import "Container.h"

/* I chose to make slotSize only accesible from within the object (and without a setter) because the slotSize should only ever be 1 value, set at instantiation.
 */

@implementation Container

- (NSUInteger)bagSize{
    return (long)self.slotSize;
}
- (id)initBagWith:(NSUInteger)material withSlots:(int)numOfSlots {
    self = [super init];
    if (self) {
        _slotSize = numOfSlots;
        _materialType = [[Container bagMaterials] objectAtIndex:material];
        _bagContents = [NSCountedSet set];
        self.stackSize = 0;
    }
    return self;
}- (id) init {
    return [self initBagWith:1 withSlots:6];
}

// Add and Remove Items from NSCountedSet
- (BOOL)addItemToBag:(Item *)item {
    //NSLog(@"%i, %@, %lu", self.slotSize, item.name, [self.bagContents count] );
    if ( self.bagSize > [self.bagContents count] ){
        [self.bagContents addObject:item];
        return TRUE;
    }
    else
        return FALSE;
    return TRUE;
}
-(BOOL)removeItemFromBag:(Item *) item {
    
    if ([self.bagContents countForObject:item] > 0) {
        [self.bagContents removeObject:item];
        return TRUE;
    }
    else{
        return FALSE;
    }
}

// Returns the contents as an NSString, formatted into a list
-(NSString *)displayBag{
    
    NSMutableArray * bag = [NSMutableArray arrayWithArray:[self.bagContents allObjects]];
    NSMutableString * bagContains = [NSMutableString string];
    
    for (Item * content in bag){
        //NSLog(@"Contents: %@", content.name);
        [bagContains appendFormat:@"%@\n", content.name];
    }
    return bagContains;
}

@end
