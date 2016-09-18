//
//  Person.m
//  Assignment1
//
//  Created by Mahyar Babaie on 9/17/16.
//  Copyright © 2016 Mahyar Babaie. All rights reserved.
//


#import <Foundation/Foundation.h>

#import "Person.h"

@implementation Person

// assiging the argument variables of name1, name2, and num1 to the variables inside class Person
-(id) initWithFirst:(NSString *)name1 andLast:(NSString *)name2 andCWID:(NSInteger)num1
{
    strFirstName = name1;
    strLastName = name2;
    iCWID = num1;
    return self;
}

// this was a test function to make sure the program was taking in the input above
-(void) print
{
    NSLog(@"First Name: %@", strFirstName);
    NSLog(@"Last Name: %@", strLastName);
    NSLog(@"CWID: %ld", iCWID);
}



@end
