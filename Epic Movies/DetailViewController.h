//
//  DetailViewController.h
//  Epic Movies
//
//  Created by Shark on 2015-06-25.
//  Copyright (c) 2015 cs2680. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieObject.h"

@interface DetailViewController : UIViewController 

@property (strong, nonatomic) MovieObject* detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UITextView *directorTV;
@property (weak, nonatomic) IBOutlet UITextView *genreTV;
@property (weak, nonatomic) IBOutlet UITextView *plotSummaryTV;

//- (id) initWithData:(MovieObject*) movieData;
@property (weak, nonatomic) IBOutlet UIImageView *posterImage;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

