//
//  Mouse.h
//  Mouze
//
//  Created by Shiaw Uen Tan on 7/9/11.
//  Copyright 2011 shiawuen@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Food.h"


@interface Mouse : NSObject

@property (nonatomic, assign)   NSString *  Name;
@property (nonatomic, assign)   float       Speed;
@property (nonatomic, assign)   int         Life;
@property (nonatomic, assign)   int         CheeseEaten;


- (id) initWithName:
    (NSString *) name
;


- (void) Eat:
    (int) food
;
- (void) Run;
- (void) Kill;


@end
