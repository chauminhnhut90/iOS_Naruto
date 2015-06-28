//
//  ThreadManager.m
//  iOS_Naruto
//
//  Created by Chau Minh Nhut on 6/23/15.
//  Copyright (c) 2015 Chau Minh Nhut. All rights reserved.
//

#import "ThreadManager.h"

@implementation ThreadManager{
    ThreadManager* manager;
    dispatch_queue_t urgentQueue;
    dispatch_queue_t nolmalQueue;
    dispatch_queue_t mainQueue;
}

-(ThreadManager*)init{
    manager = [super init];
    if(manager==nil){
        manager = [[ThreadManager alloc] init];
        
        urgentQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0ul);
        nolmalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0ul);
        urgentQueue = dispatch_get_main_queue();
    }
    return manager;
}

@end
