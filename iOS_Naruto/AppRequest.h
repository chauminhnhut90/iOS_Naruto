//
//  AppRequest.h
//  iOS_Naruto
//
//  Created by Chau Minh Nhut on 6/23/15.
//  Copyright (c) 2015 Chau Minh Nhut. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppRequest : NSObject

- (void) sendHTTPGet:(NSString*)url;

@end
