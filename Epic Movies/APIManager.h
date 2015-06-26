//
//  APIManager.h
//  Epic Movies
//
//  Created by Shark on 2015-06-26.
//  Copyright (c) 2015 cs2680. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^URLDataCompletionBlock)(NSData* data);

@interface APIManager : NSObject

+ (void) getImageData:(NSString*)iconString completionBlock:(URLDataCompletionBlock)completion;

@end
