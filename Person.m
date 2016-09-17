//
//  Person.m
//  Assignment1
//
//  Created by Mahyar Babaie on 9/17/16.
//  Copyright © 2016 Mahyar Babaie. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

@implementation Person

-(id) init
{
	self = [super init];
	return self;
}

-(void) setFirstName: (char *) sName
{
	strFirstName = sName;
}

-(void) setLastName: (char *) sName
{
	strLastName = sName;
}

-(void) setCWID: (int) iNo
{
	iCWID = iNo;
}

-(void) print
{
	strDesc = malloc(200 * sizeof(char));
	sprintf(strDesc, "First Name: %s Last Name: %s CWID: %d", strFirstName, strLastName, iCWID);
	return strDesc;
}

-(void) dealloc
{
	NSLog(@"Deallocation has begun");
	
	free(strDesc);
	strDesc = nil;
	
	NSLog(@"Finished Deallocating")
}

@end