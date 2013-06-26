//
//  Feed.m
//  The Journey
//
//  Created by Zack Fletcher on 6/13/13.
//  Copyright (c) 2013 The Journey. All rights reserved.
//

#import "Feed.h"

@implementation Feed

-(id)initWithURL:(NSURL *)sourceURL {

if (self = [super init]) {
    
    self.feedURL = sourceURL;
    feedPosts = [[NSMutableArray alloc] init];
    
}

return self;
}

-(void)refresh {
    self.feedRequest = [ASIHTTPRequest requestWithURL:feedURL];
    [feedRequest setDelegate:self];
    [feedRequest startAsynchronous];
}

@end
