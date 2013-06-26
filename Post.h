//
//  Post.h
//  The Journey
//
//  Created by Zack Fletcher on 6/13/13.
//  Copyright (c) 2013 The Journey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Post : NSObject {
    BOOL isRead;
    NSString *title;
    NSString *description;
    NSString *guid;
}

@end
