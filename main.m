//
//  main.m
//  Assignment1
//
//  Created by Mahyar Babaie on 9/17/16.
//  Copyright © 2016 Mahyar Babaie. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char fName[100];
        char lName[100];
        int CWID = 0;
     
        NSLog(@"Enter your First Name: ");
        scanf("%s", fName);
        NSString *FirstName = [NSString stringWithFormat:@"%s", fName];
        
        NSLog(@"Enter your Last Name: ");
        scanf("%s", lName);
        NSString *LastName = [NSString stringWithFormat:@"%s", lName];
        
        NSLog(@"Enter your CWID");
        scanf("%d", &CWID);
        
        
        // prints First Name
        NSLog(@"%@",FirstName);
        // prints Last Name
        NSLog(@"%@",LastName);
        // prints CWID
        NSLog(@"%d", CWID);
    }
    return 0;
}
