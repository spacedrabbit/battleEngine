//
//  Skills.h
//  battleEngine
//
//  Created by Louis Tur on 12/14/13.
//  Copyright (c) 2013 Louis Tur. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Unit.h"

@interface Skills : Unit

-(void)magicMissle:(Unit *)f;
-(void)fireball:(Unit *)f;


-(void)disarm:(Unit *)f;
-(void)bullRush:(Unit *)f;

-(void)dirtyTrick:(Unit *)f;
-(void)backstab:(Unit *)f;


@end



