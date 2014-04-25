//
//  MGTokenList.m
//  Parsnip
//
//  Created by Willi Müller on 25.04.14.
//  Copyright (c) 2014 UFMG. All rights reserved.
//

#import "MGTokenStore.h"

@interface MGTokenStore ()

@property NSMutableArray* tokens;
@property NSInteger cursorPosition;
@property NSString* cursorString;

@end

@implementation MGTokenStore

-(id)init
{
	self = [super init];
	if(self) {
		self.cursorPosition = 0;
		self.cursorString = @"◄";
		self.tokens = [[NSMutableArray alloc] init];
	}
	return self;
}

-(void)insertToken:(NSString *) token
{
	[self.tokens insertObject:token atIndex:self.cursorPosition];
	self.cursorPosition++;
}

-(NSString *)getTokenText
{
	return [self.tokens componentsJoinedByString:@";"];
}

@end
