//
//  main.m
//  GetSafariCookies
//
//  Created by Jeremy Agostino on 7/16/15.
//  Copyright (c) 2015 GroundControl. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {

		NSArray * cookies = [[NSHTTPCookieStorage sharedHTTPCookieStorage] cookies];
		for (NSHTTPCookie * cookie in cookies) {

			NSString * line = [NSString stringWithFormat:@""
							   "%@\t"	// domain
							   "TRUE\t"
							   "%@\t"	// path
							   "FALSE\t"
							   "%ld\t"	// expire time
							   "%@\t"	// name
							   "%@\n",		// value
							   cookie.domain,
							   cookie.path,
							   (long)cookie.expiresDate.timeIntervalSince1970,
							   cookie.name,
							   cookie.value];
			printf("%s", [line cStringUsingEncoding:NSUTF8StringEncoding]);
		}
	}
    return 0;
}
