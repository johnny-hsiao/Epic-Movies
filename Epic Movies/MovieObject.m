//
//  MovieObject.m
//  Epic Movies
//
//  Created by Hung-en (Johnny) Hsiao on 2015-06-25.
//  Copyright (c) 2015 cs2680. All rights reserved.
//

#import "MovieObject.h"

@implementation MovieObject

- (id) initWithMovie:(NSDictionary *)dict {
    self = [super init];
    if (self != nil) {
        // Parse dictionary
        self.movieName = dict[@"movie_name"];
        self.yearReleased = dict[@"year_released"];
        self.director = dict[@"director"];
        self.url = dict[@"url"];
        self.imdbURL = self.url[@"imdb"];
        self.rottentomatoesURL = self.url[@"rottentomatoes"];
        self.wikiURL = self.url[@"wiki"];
        self.genre = dict[@"genre"];
        self.plotSummary = dict[@"plot_summary"];
        self.posterURL = dict[@"movie_poster_url"];
    }
    return self;
}

@end
