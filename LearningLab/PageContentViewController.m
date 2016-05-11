//
//  PageContentViewController.m
//  LearningLab
//
//  Created by Fabio General on 4/27/16.
//  Copyright © 2016 fabiogeneral. All rights reserved.
//

#import "PageContentViewController.h"

@interface PageContentViewController ()

@end

@implementation PageContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.backgroundImageView.image = [UIImage imageNamed:self.imageFile];
    self.titleLabel.text = self.titleText;
    
    //self.bodyLabel.text = self.bodyText;
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.minimumLineHeight = 23;
    paragraphStyle.maximumLineHeight = 23;
    NSDictionary *attributtes = @{NSParagraphStyleAttributeName:paragraphStyle};
    self.bodyLabel.attributedText = [[NSAttributedString alloc] initWithString:self.bodyText attributes:attributtes];
    [self.bodyLabel sizeToFit];
    self.bodyLabel.textAlignment = NSTextAlignmentCenter;

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
