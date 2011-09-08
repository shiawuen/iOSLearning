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

@property (nonatomic, assign)   NSString *  name;
@property (nonatomic, assign)   float       speed;
@property (nonatomic, assign)   int         life;
@property (nonatomic, assign)   int         cheeseEaten;


- (id) initWithName:
    (NSString *) nameGiven
;


- (void) eat:
    (int) foodEating
;
- (void) run;
- (void) kill;


@end
