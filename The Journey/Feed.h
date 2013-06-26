//
//  Feed.h
//  The Journey
//
//  Created by Zack Fletcher on 6/13/13.
//  Copyright (c) 2013 The Journey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASIHTTPRequest.h"
#import "Channel.h"

@class ASIHTTPRequest;

@interface Feed : NSObject {
    
    NSURL *feedURL;
    ASIHTTPRequest *feedRequest;
    
    Channel *feedChannel;
    NSMutableArray *feedPosts;
    
    id currentElement;
    NSMutableString *currentElementData;
    
}

@property (nonatomic, copy) NSURL *feedURL;
@property (nonatomic, retain) ASIHTTPRequest *feedRequest;

@end
