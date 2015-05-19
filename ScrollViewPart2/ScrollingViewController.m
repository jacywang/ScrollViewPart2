//
//  ScrollingViewController.m
//  ScrollViewPart2
//
//  Created by JIAN WANG on 5/19/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "ScrollingViewController.h"

@interface ScrollingViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end

@implementation ScrollingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *image1 = [UIImage imageNamed:@"Lighthouse-in-Field.jpg"];
    UIImage *image2 = [UIImage imageNamed:@"Lighthouse-night.jpg"];
    UIImage *image3 = [UIImage imageNamed:@"Lighthouse.jpg"];

    UIImageView *imageView1 = [[UIImageView alloc] initWithImage:image1];
    UIImageView *imageView2 = [[UIImageView alloc] initWithImage:image2];
    UIImageView *imageView3 = [[UIImageView alloc] initWithImage:image3];
    NSArray *imageViewArrays = @[imageView1, imageView2, imageView3];
    
    imageView1.frame = self.view.frame;
    CGRect rect2 = imageView1.frame;
    rect2.origin.x += imageView1.frame.size.width;
    imageView2.frame = rect2;
    CGRect rect3 = imageView2.frame;
    rect3.origin.x += imageView2.frame.size.width;
    imageView3.frame = rect3;
    
    [self.scrollView addSubview:imageView1];
    [self.scrollView addSubview:imageView2];
    [self.scrollView addSubview:imageView3];
    
    self.scrollView.contentSize = CGSizeMake(imageView1.frame.size.width * 3, self.view.bounds.size.height);
    self.scrollView.pagingEnabled = YES;
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.showsVerticalScrollIndicator = NO;
    self.scrollView.scrollsToTop = NO;
    
    self.pageControl.numberOfPages = imageViewArrays.count;
    self.pageControl.currentPage = 0;
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat pageWidth = self.scrollView.frame.size.width;
    int page = floor((self.scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    self.pageControl.currentPage = page;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
