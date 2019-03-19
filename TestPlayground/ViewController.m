//
//  ViewController.m
//  TestPlayground
//
//  Created by Ersin Kahraman on 19.03.2019.
//  Copyright © 2019 Ersin Kahraman. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Image.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
@property (weak, nonatomic) IBOutlet UIButton *btn3;
@property (weak, nonatomic) IBOutlet UIButton *btn4;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.btn1.titleLabel setLineBreakMode:NSLineBreakByWordWrapping];
    [self.btn1.titleLabel setTextAlignment:NSTextAlignmentCenter];
    [self.btn2.titleLabel setLineBreakMode:NSLineBreakByWordWrapping];
    [self.btn2.titleLabel setTextAlignment:NSTextAlignmentCenter];
    [self.btn3.titleLabel setLineBreakMode:NSLineBreakByWordWrapping];
    [self.btn3.titleLabel setTextAlignment:NSTextAlignmentCenter];
    [self.btn4.titleLabel setLineBreakMode:NSLineBreakByWordWrapping];
    [self.btn4.titleLabel setTextAlignment:NSTextAlignmentCenter];
    [self.btn1 setImage:[UIImage imageNamed:@"plus"] withTitle:@"Some long long text" withTitlePosition:TitlePositionTop withSpacing:26.0f];
    [self.btn2 setImage:[UIImage imageNamed:@"trash"] withTitle:@"Another long long text" withTitlePosition:TitlePositionBottom withSpacing:26.0f];
    [self.btn3 setImage:[UIImage imageNamed:@"trash"] withTitle:@"The other long long text" withTitlePosition:TitlePositionTop withSpacing:26.0f];
    [self.btn4 setImage:[UIImage imageNamed:@"plus"] withTitle:@"the last long long text" withTitlePosition:TitlePositionBottom withSpacing:26.0f];
    
}


@end
