//
//  Student.m
//  Assignment1
//
//  Created by Mahyar Babaie on 9/17/16.
//  Copyright © 2016 Mahyar Babaie. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Student.h"

@implementation Student

-(id) initWithFirst:(NSString *)name1 andLast:(NSString *)name2 andCWID:(NSInteger)num1
{
    strFirstName = name1;
    strLastName = name2;
    iCWID = num1;
    return self;
}

-(void) CourseID:(long [])array1 andHW:(long [])array2 andMidTerm:(long [])array3 andFinal:(long[])array4
{
    
}

-(void) print
{
    NSLog(@"First Name: %@", strFirstName);
    NSLog(@"Last Name: %@", strLastName);
    NSLog(@"CWID: %ld", iCWID);
}


@end