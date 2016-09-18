//
//  main.m
//  Assignment1
//  TEST CASES DOWN BELOW
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
        // Prompts user for first name and then turns it into a NSString Object
        NSLog(@"Enter your First Name: ");
        scanf("%s", fName);
        NSString *FirstName = [NSString stringWithFormat:@"%s", fName];
        // Promps user for last name and then turns it into a NSString Object
        NSLog(@"Enter your Last Name: ");
        scanf("%s", lName);
        NSString *LastName = [NSString stringWithFormat:@"%s", lName];
        // Prompts user for CWID and stores it into the CWID variable
        NSLog(@"Enter your CWID:");
        scanf("%ld", &CWID);
        // Checks how many courses they are taking to set the limit on the for loop
        NSLog(@"How many courses did you take?");
        scanf("%ld", &courseLimit);
        // will loop for each course they took until it gets all the proper numbers
        for (int i = 0; i < courseLimit; i++)
        {
            // gets the Course ID
            NSLog(@"Enter your Course ID");
            scanf("%ld", &courseNumber);
            courseList[i] = courseNumber;
            // Gets the Avg HW Score
            NSLog(@"Enter your Avg HW Score");
            scanf("%ld", &hwScore);
            hwList[i] = hwScore;
            // Gets the Mid Term Score
            NSLog(@"Enter your MidTerm Score");
            scanf("%ld", &midtermScore);
            midtermList[i] = midtermScore;
            // Gets the Final Score
            NSLog(@"Enter your Final Score");
            scanf("%ld", &finalScore);
            finalList[i] = finalScore;
        }
        // We create a student object that uses the constructor to initialize values
        Student *student = [[Student alloc]initWithFirst:FirstName andLast:LastName andCWID:CWID];
        // This will calculate the student's grade
        [student CalcHW:hwList andMidTerm:midtermList andFinal:finalList andLimit:courseLimit];
        // This will put the course ID paired with the corresponding grade in a dictionaryu
        [student DictionaryMaker:courseList andLimit:courseLimit];
        // will print the student first name, last name, CWID, and course ID(s) with the grade(s)
        [student print];
        
    }
    return 0;
}
/*
 Test Case #1
 2016-09-17 22:59:05.555 Assignment1[1806:57852] Enter your First Name:
 Jon
 2016-09-17 22:59:09.300 Assignment1[1806:57852] Enter your Last Name:
 Smith
 2016-09-17 22:59:10.618 Assignment1[1806:57852] Enter your CWID:
 5694031
 2016-09-17 22:59:15.142 Assignment1[1806:57852] How many courses did you take?
 2
 2016-09-17 22:59:18.292 Assignment1[1806:57852] Enter your Course ID
 235
 2016-09-17 22:59:22.504 Assignment1[1806:57852] Enter your Avg HW Score
 100
 2016-09-17 22:59:24.570 Assignment1[1806:57852] Enter your MidTerm Score
 70
 2016-09-17 22:59:25.936 Assignment1[1806:57852] Enter your Final Score
 60
 2016-09-17 22:59:26.941 Assignment1[1806:57852] Enter your Course ID
 413
 2016-09-17 22:59:29.891 Assignment1[1806:57852] Enter your Avg HW Score
 100
 2016-09-17 22:59:31.942 Assignment1[1806:57852] Enter your MidTerm Score
 80
 2016-09-17 22:59:32.968 Assignment1[1806:57852] Enter your Final Score
 60
 2016-09-17 22:59:34.221 Assignment1[1806:57852] FirstName: Jon LastName: Smith CWID: 5694031
 2016-09-17 22:59:34.221 Assignment1[1806:57852] {
 "Score: 73.500000" = "Course Number: 235";
 "Score: 77.000000" = "Course Number: 413";
 }
 Program ended with exit code: 0
 
 ----------------------------------------------------------------------------------------------
 Test Case #2
 2016-09-17 23:00:26.640 Assignment1[1821:58122] Enter your First Name:
 Bob
 2016-09-17 23:00:31.419 Assignment1[1821:58122] Enter your Last Name:
 Smith
 2016-09-17 23:00:32.623 Assignment1[1821:58122] Enter your CWID:
 5612311
 2016-09-17 23:00:37.643 Assignment1[1821:58122] How many courses did you take?
 4
 2016-09-17 23:00:40.060 Assignment1[1821:58122] Enter your Course ID
 100
 2016-09-17 23:00:43.183 Assignment1[1821:58122] Enter your Avg HW Score
 100
 2016-09-17 23:00:45.258 Assignment1[1821:58122] Enter your MidTerm Score
 100
 2016-09-17 23:00:46.576 Assignment1[1821:58122] Enter your Final Score
 40
 2016-09-17 23:00:48.947 Assignment1[1821:58122] Enter your Course ID
 500
 2016-09-17 23:00:54.270 Assignment1[1821:58122] Enter your Avg HW Score
 100
 2016-09-17 23:00:55.875 Assignment1[1821:58122] Enter your MidTerm Score
 50
 2016-09-17 23:00:57.157 Assignment1[1821:58122] Enter your Final Score
 40
 2016-09-17 23:00:58.318 Assignment1[1821:58122] Enter your Course ID
 386
 2016-09-17 23:01:03.946 Assignment1[1821:58122] Enter your Avg HW Score
 100
 2016-09-17 23:01:05.521 Assignment1[1821:58122] Enter your MidTerm Score
 70
 2016-09-17 23:01:06.653 Assignment1[1821:58122] Enter your Final Score
 40
 2016-09-17 23:01:07.682 Assignment1[1821:58122] Enter your Course ID
 390
 2016-09-17 23:01:10.209 Assignment1[1821:58122] Enter your Avg HW Score
 100
 2016-09-17 23:01:11.747 Assignment1[1821:58122] Enter your MidTerm Score
 80
 2016-09-17 23:01:12.790 Assignment1[1821:58122] Enter your Final Score
 60
 2016-09-17 23:01:14.443 Assignment1[1821:58122] FirstName: Bob LastName: Smith CWID: 5612311
 2016-09-17 23:01:14.443 Assignment1[1821:58122] {
 "Score: 58.500000" = "Course Number: 500";
 "Score: 65.500000" = "Course Number: 386";
 "Score: 76.000000" = "Course Number: 100";
 "Score: 77.000000" = "Course Number: 390";
 }
 Program ended with exit code: 0 
 ----------------------------------------------------------------------------------------------
 Test Case #3
 2016-09-17 23:02:47.688 Assignment1[1838:58526] Enter your First Name:
 John
 2016-09-17 23:02:50.665 Assignment1[1838:58526] Enter your Last Name:
 Deere
 2016-09-17 23:02:51.946 Assignment1[1838:58526] Enter your CWID:
 891400500
 2016-09-17 23:02:56.964 Assignment1[1838:58526] How many courses did you take?
 1
 2016-09-17 23:03:06.868 Assignment1[1838:58526] Enter your Course ID
 411
 2016-09-17 23:03:09.033 Assignment1[1838:58526] Enter your Avg HW Score
 100
 2016-09-17 23:03:10.037 Assignment1[1838:58526] Enter your MidTerm Score
 70
 2016-09-17 23:03:11.779 Assignment1[1838:58526] Enter your Final Score
 84
 2016-09-17 23:03:13.203 Assignment1[1838:58526] FirstName: John LastName: Deere CWID: 891400500
 2016-09-17 23:03:13.205 Assignment1[1838:58526] {
 "Score: 83.100000" = "Course Number: 411";
 }
 Program ended with exit code: 0
 */
