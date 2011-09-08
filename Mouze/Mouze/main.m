//
//  main.m
//  Mouze
//
//  Created by Shiaw Uen Tan on 7/9/11.
//  Copyright 2011 shiawuen@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mouse.h"
#import "SpeedyMouse.h"
#import "Food.h"


int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    Mouse *mouse = [[Mouse alloc] initWithName:@"Micky"];
    SpeedyMouse *speedyMouse = [[SpeedyMouse alloc] initWithName:@"Speedy"];

    [mouse run];
    [mouse run];
    [mouse run];

    [mouse eat:Cheese];
    [mouse eat:Cheese];
    [mouse eat:Cheese];
    [mouse eat:Cheese];

    [mouse eat:Garbage];
    [mouse eat:Garbage];
    [mouse eat:Garbage];

    [mouse run];
    [mouse run];

    [mouse eat:Garbage];

    [speedyMouse run];
    [speedyMouse kill];

    [pool drain];
    return 0;
}

