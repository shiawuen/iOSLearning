//
//  SpeedyMouse.m
//  Mouze
//
//  Created by Shiaw Uen Tan on 8/9/11.
//  Copyright 2011 shiawuen@gmail.com. All rights reserved.
//

#import "SpeedyMouse.h"

@implementation SpeedyMouse

- (id)init
{
    self = [super init];

    if (self)
    {
        self.Speed = 4.0;
    }
    
    return self;
}


- (void) Run
{
    NSLog(@"%@ running very fast!", self.Name);
}

@end
