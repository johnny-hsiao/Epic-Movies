//
//  MasterViewController.h
//  Epic Movies
//
//  Created by Shark on 2015-06-25.
//  Copyright (c) 2015 cs2680. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieObject.h"

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end

