//
//  MovieObject.h
//  Epic Movies
//
//  Created by Shark on 2015-06-25.
//  Copyright (c) 2015 cs2680. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MovieObject : NSObject

@property (strong, nonatomic) NSString* movieName;
@property (strong, nonatomic) NSString* yearReleased;
@property (strong, nonatomic) NSString* director;
@property (strong, nonatomic) NSDictionary* url;
@property (strong, nonatomic) NSString* imdbURL;
@property (strong, nonatomic) NSString* rottentomatoesURL;
@property (strong, nonatomic) NSString* wikiURL;
@property (strong, nonatomic) NSArray* genre;
@property (strong, nonatomic) NSString* plotSummary;
@property (strong, nonatomic) NSString* posterURL;

- (id) initWithMovie:(NSDictionary*) dict;

@end
