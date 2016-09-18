//
//  Person.h
//  Assignment1
//
//  Created by Mahyar Babaie on 9/17/16.
//  Copyright © 2016 Mahyar Babaie. All rights reserved.
//

#ifndef Person_h
#define Person_h

@interface Person : NSObject
{
// List of Variables that will set values to first name, last name, and their CWID
    NSString *strFirstName;
    NSString *strLastName;
    NSInteger iCWID;
}
// Constructor
-(id) initWithFirst:(NSString *)name1 andLast:(NSString *)name2 andCWID:(NSInteger)num1;
// prints out a message
-(void) print;


@end
#endif /* Person_h */
