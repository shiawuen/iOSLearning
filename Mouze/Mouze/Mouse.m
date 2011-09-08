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
    Name, 
    Speed, 
    Life, 
    CheeseEaten
;


- (id)init
{
    self = [super init];

    if (self) {

        self.Life = 3;
        self.Speed = 2.0;
        self.CheeseEaten = 0;

    }
    
    return self;
}

- (id) initWithName:(NSString *)name
{
    self = [super init];
    
    if (self)
    {

        [self init];
        self.Name = name;

    }

    return self;
}



- (void) Eat: (int) food
{
    if (food == Cheese)
    {
        CheeseEaten += 1;
        
        NSLog(@"%@ eat a Cheese!", self.Name);

        if (CheeseEaten >= 3)
        {
            Life += 1;
            CheeseEaten = 0;

            NSLog(@"%@ increased Life to %d", self.Name, self.Life);
        }

    }

    else if (food == Garbage)
    {
        Life -= 1;

        NSLog(@"%@ life -1 to %d", self.Name, self.Life);
        
        if (Life == 0)
            [self Kill];
    }
    
    
}

- (void) Run {
    NSLog(@"%@ running", self.Name);
}

- (void) Kill {
    NSLog(@"%@ die", self.Name);
}



@end
