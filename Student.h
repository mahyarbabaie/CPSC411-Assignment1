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

@interface Student : Person
{
    long courseIDArray[10];
    long hwArray[10];
    long midtermArray[10];
    long finalArray[10];
}


-(id) initWithFirst:(NSString *)name1 andLast:(NSString *)name2 andCWID:(NSInteger)num1;
-(void) CourseID:(long [])array1 andHW:(long [])array2 andMidTerm:(long [])array3 andFinal:(long[])array4;
-(void) print;



@end
#endif /* Student_h */
