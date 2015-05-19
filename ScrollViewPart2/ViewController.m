//
//  ViewController.m
//  ScrollViewPart2
//
//  Created by JIAN WANG on 5/19/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage *image = [UIImage imageNamed:@"Lighthouse-in-Field.jpg"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    
    [self.scrollView addSubview:imageView];
    
    self.scrollView.contentSize = image.size;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
