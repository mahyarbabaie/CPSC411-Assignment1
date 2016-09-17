/
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
    @protected char * strFirstName;     // default visibility is 'protected'
    @protected char * strLastName;
    @protected int iCWID;
    
}

-(id) init;             // Default constructor need to be explictly declared 
-(void) setFirstName: (char *) strName;
-(void) setLastName: (char *) strName;
-(void) setCWID: (int) iNumber;
-(void) print;

-(void) dealloc;        // Override this method because of dynamically allocated memory

@end

#endif 