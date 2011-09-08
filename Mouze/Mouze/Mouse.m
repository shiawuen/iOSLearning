//
//  Mouse.m
//  Mouze
//
//  Created by Shiaw Uen Tan on 7/9/11.
//  Copyright 2011 shiawuen@gmail.com. All rights reserved.
//

#import "Mouse.h"
#import "Food.h"

@implementation Mouse

@synthesize 
    name, 
    speed, 
    life, 
    cheeseEaten
;


- (id)init
{
    return [self initWithName:nil];
}

- (id) initWithName: (NSString *) nameGiven
{
    self = [super init];
    
    if (self)
    {

        self.name  = [nameGiven copy];
        self.life  = 3;
        self.speed = 2.0;
        self.cheeseEaten = 0;

    }

    return self;
}



- (void) eat: (int) foodEating
{
    if (foodEating == Cheese)
    {
        self.cheeseEaten += 1;
        
        NSLog(@"%@ eat a Cheese!", self.name);

        if (self.cheeseEaten >= 3)
        {
            self.life += 1;
            self.cheeseEaten = 0;

            NSLog(@"%@ increased Life to %d", self.name, self.life);
        }

    }

    else if (foodEating == Garbage)
    {
        self.life -= 1;

        NSLog(@"%@ life -1 to %d", self.name, self.life);
        
        if (self.life == 0)
            [self kill];
    }
    
    
}

- (void) run {
    NSLog(@"%@ running", self.name);
}

- (void) kill {
    NSLog(@"%@ die", self.name);
}



@end
