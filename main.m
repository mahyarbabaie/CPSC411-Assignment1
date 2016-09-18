//
//  main.m
//  Assignment1
//
//  Created by Mahyar Babaie on 9/17/16.
//  Copyright © 2016 Mahyar Babaie. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Student.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        char fName[100];
        char lName[100];
        long courseList[10];
        long hwList[10];
        long midtermList[10];
        long finalList[10];
        NSInteger hwScore, midtermScore, finalScore, courseLimit, courseNumber, CWID;
        
        NSLog(@"Enter your First Name: ");
        scanf("%s", fName);
        NSString *FirstName = [NSString stringWithFormat:@"%s", fName];
        
        NSLog(@"Enter your Last Name: ");
        scanf("%s", lName);
        NSString *LastName = [NSString stringWithFormat:@"%s", lName];
        
        NSLog(@"Enter your CWID:");
        scanf("%ld", &CWID);
        
        NSLog(@"How many courses did you take?");
        scanf("%ld", &courseLimit);
        
        for (int i = 0; i < courseLimit; i++)
        {
            NSLog(@"Enter your Course ID");
            scanf("%ld", &courseNumber);
            courseList[i] = courseNumber;
            
            NSLog(@"Enter your Avg HW Score");
            scanf("%ld", &hwScore);
            hwList[i] = hwScore;
            
            NSLog(@"Enter your MidTerm Score");
            scanf("%ld", &midtermScore);
            midtermList[i] = midtermScore;
            
            NSLog(@"Enter your Final Score");
            scanf("%ld", &finalScore);
            finalList[i] = finalScore;
        }
        
        Student *student = [[Student alloc]initWithFirst:FirstName andLast:LastName andCWID:CWID];
        [student CalcHW:hwList andMidTerm:midtermList andFinal:finalList andLimit:courseLimit];
        [student DictionaryMaker:courseList andLimit:courseLimit];
        [student print];
        
    }
    return 0;
}
