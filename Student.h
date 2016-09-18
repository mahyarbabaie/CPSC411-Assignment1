//
//  Student.h
//  Assignment1
//
//  Created by Mahyar Babaie on 9/17/16.
//  Copyright © 2016 Mahyar Babaie. All rights reserved.
//

#ifndef Student_h
#define Student_h

#import "Person.h"

// Class Student inherits from Class Person
@interface Student : Person
{
    // arrays are used to store values of course ID, HW, Midterm, and Final
    long courseIDArray[10];
    long hwArray[10];
    long midtermArray[10];
    long finalArray[10];
}

// Constructor
-(id) initWithFirst:(NSString *)name1 andLast:(NSString *)name2 andCWID:(NSInteger)num1;
// Calculates the grades for the course
-(void) CalcHW:(long [])array1 andMidTerm:(long [])array2 andFinal:(long[])array3 andLimit:(NSInteger)num1;
// Puts the Course ID with the appropriate grade in a Dictionary
-(void) DictionaryMaker:(long[])array1 andLimit:(NSInteger)num1;
// prints out the Student First Name, Last Name and CWID
// prints out the average score for each course taken by the student
-(void) print;



@end
#endif /* Student_h */
