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

-(void) CalcHW:(long [])array1 andMidTerm:(long [])array2 andFinal:(long[])array3 andLimit:(NSInteger)num1;

-(void) DictionaryMaker:(long[])array1 andLimit:(NSInteger)num1;

-(void) print;



@end
#endif /* Student_h */
