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
{
    double scoreList[10];
    NSMutableArray *courseIDs;
    NSMutableArray *courseGrades;
    NSMutableDictionary *CourseGradeDict;
    
}

-(id) initWithFirst:(NSString *)name1 andLast:(NSString *)name2 andCWID:(NSInteger)num1
{
    strFirstName = name1;
    strLastName = name2;
    iCWID = num1;
    return self;
}

-(void) CalcHW:(long [])array1 andMidTerm:(long [])array2 andFinal:(long[])array3 andLimit:(NSInteger)num1
{
    double hw = 0;
    double mid = 0;
    double final = 0;
    for(int i = 0; i < num1; i++)
    {
        // hw
        hw = array1[i] * .25;
        // midterm
        mid = array2[i] *.35;
        // final
        final = array3[i] *.40;
        scoreList[i] = (hw + mid + final);
    }
}

-(void) DictionaryMaker:(long[])array1 andLimit:(NSInteger)num1
{
    NSString *strCID = nil;
    NSString *strSLIST = nil;
    NSString *Score =@"Score: ";
    NSString *Class =@"Course Number: ";
    CourseGradeDict = [[NSMutableDictionary alloc] init];
    
    for (int i = 0; i < num1; i++)
    {
        strCID = [NSString stringWithFormat:@"%@%ld", Class, array1[i]];
        strSLIST = [NSString stringWithFormat:@"%@%lf", Score, scoreList[i]];
        [CourseGradeDict setObject:strCID forKey:strSLIST];
    }
    
   
    
    
}
-(void) print
{
    NSLog(@"FirstName: %@ LastName: %@ CWID: %ld", strFirstName, strLastName, iCWID);
    NSLog(@"%@", CourseGradeDict);
    
}


@end