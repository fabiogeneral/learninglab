//
//  PageContentViewController.h
//  LearningLab
//
//  Created by Fabio General on 4/27/16.
//  Copyright © 2016 fabiogeneral. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageContentViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *bodyLabel;
@property NSUInteger pageIndex;
@property NSString *imageFile;
@property NSString *titleText;
@property NSString *bodyText;

@end