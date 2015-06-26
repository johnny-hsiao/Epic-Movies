//
//  APIManager.m
//  Epic Movies
//
//  Created by Hung-en (Johnny) Hsiao on 2015-06-26.
//  Copyright (c) 2015 cs2680. All rights reserved.
//

#import "APIManager.h"

@implementation APIManager

+ (void) getImageData:(NSString *)iconString completionBlock:(URLDataCompletionBlock)completion {
    NSString* urlString = iconString;
    NSURL* url = [[NSURL alloc] initWithString:urlString];
    NSURLSession* session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask* dataTask = [session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error == nil) {
            completion(data);
        }
    }];
    
    [dataTask resume];
}

@end
