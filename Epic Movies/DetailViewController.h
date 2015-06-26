//
//  DetailViewController.h
//  Epic Movies
//
//  Created by Shark on 2015-06-25.
//  Copyright (c) 2015 cs2680. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

