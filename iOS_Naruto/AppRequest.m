//
//  AppRequest.m
//  iOS_Naruto
//
//  Created by Chau Minh Nhut on 6/23/15.
//  Copyright (c) 2015 Chau Minh Nhut. All rights reserved.
//

#import "AppRequest.h"

@implementation AppRequest

- (void) sendHTTPGet:(NSString*)url{
    // Send a synchronous request
    NSURLRequest * urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    NSURLResponse * response = nil;
    NSError * error = nil;
    NSData * data = [NSURLConnection sendSynchronousRequest:urlRequest
                                          returningResponse:&response
                                                      error:&error];
    
    if (error == nil)
    {
        // Parse data here
    }
}
@end
