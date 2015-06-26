//
//  DetailViewController.m
//  Epic Movies
//
//  Created by Hung-en (Johnny) Hsiao on 2015-06-25.
//  Copyright (c) 2015 cs2680. All rights reserved.
//

#import "DetailViewController.h"
#import "MasterViewController.h"
#import "MovieObject.h"
#import "APIManager.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)setDetailItem:(MovieObject*)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        // Assign values to labels
        self.movieLabel.text = [NSString stringWithFormat:@"%@ (%@)", self.detailItem.movieName, self.detailItem.yearReleased];
        self.directorTV.text = [NSString stringWithFormat:@"Directed by: %@",self.detailItem.director];
        self.plotSummaryTV.text = [NSString stringWithFormat:@"Plot Summary: %@",self.detailItem.plotSummary];
        
        NSArray* genre = self.detailItem.genre;
        NSString* genreString = genre[0];
        for (int i = 1; i < genre.count; i++) {
            genreString = [NSString stringWithFormat:@"%@, %@", genreString, genre[i]];
        }
        self.genreTV.text = [NSString stringWithFormat:@"Genre: %@",genreString];
        
        // Customize labels
        self.genreTV.textColor = [UIColor whiteColor];
        self.directorTV.textColor = [UIColor whiteColor];
        self.plotSummaryTV.textColor = [UIColor whiteColor];
        
        // Get image from URL and set to image view
        NSString* imageURLString = [NSString stringWithFormat:@"%@", self.detailItem.posterURL];
        [APIManager getImageData:imageURLString completionBlock:^(NSData *imageData) {
           dispatch_async(dispatch_get_main_queue(), ^{
               UIImage* image = [UIImage imageWithData:imageData];
               self.posterImage.image = image;
           });
        }];
        
        // Request url for web view
        NSString* urlString = (NSString*)self.detailItem.wikiURL;
        NSURL* url = [NSURL URLWithString:urlString];
        NSURLRequest* request = [NSURLRequest requestWithURL:url];
        [self.webView loadRequest:request];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
