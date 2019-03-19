//
//  UIButton+Image.m
//  TestPlayground
//
//  Created by Ersin Kahraman on 19.03.2019.
//  Copyright © 2019 Ersin Kahraman. All rights reserved.
//

#import "UIButton+Image.h"

@implementation UIButton (Image)

-(void)setImage:(UIImage *)image withTitle:(NSString *)title withTitlePosition:(TitlePosition)titlePosition withSpacing:(CGFloat)spacing {
    [self.imageView setContentMode:UIViewContentModeCenter];
    [self setImage:image forState:UIControlStateNormal];
    [self setTitle:title forState:UIControlStateNormal];
    [self.titleLabel setContentMode:UIViewContentModeCenter];
    [self adjustTitle:title atPosition:titlePosition withSpacing:spacing];
}

-(void)adjustTitle:(NSString *)title atPosition:(TitlePosition)position withSpacing:(CGFloat)spacing {
    CGRect imageRect = [self imageRectForContentRect:self.frame];
    UIFont *titleFont = self.titleLabel.font;
    NSDictionary *attributes = @{NSFontAttributeName: titleFont};
    CGSize titleSize = [title sizeWithAttributes:attributes];
    [self arrangeTitleSize:titleSize imageRect:imageRect atPosition:position withSpacing:spacing];
}

-(void)arrangeTitleSize:(CGSize)titleSize imageRect:(CGRect)imageRect atPosition:(TitlePosition)position withSpacing:(CGFloat)spacing{
    switch (position) {
        case TitlePositionTop:
            self.titleEdgeInsets = UIEdgeInsetsMake(-(imageRect.size.height + titleSize.height + spacing), -(imageRect.size.width), 0, 0);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -titleSize.width);
            self.contentEdgeInsets = UIEdgeInsetsMake(spacing / 2 + titleSize.height, -imageRect.size.width/2, 0, -imageRect.size.width/2);
            break;
        case TitlePositionBottom:
            self.titleEdgeInsets = UIEdgeInsetsMake((imageRect.size.height + titleSize.height + spacing), -(imageRect.size.width), 0, 0);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -titleSize.width);
            self.contentEdgeInsets = UIEdgeInsetsMake(0, -imageRect.size.width/2, spacing / 2 + titleSize.height , -imageRect.size.width/2);
            break;
        case TitlePositionLeft:
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -(imageRect.size.width * 2), 0, 0);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -(titleSize.width * 2 + spacing));
            self.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, spacing / 2);
            break;
        case TitlePositionRight:
            self.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -spacing);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
            self.contentEdgeInsets = UIEdgeInsetsMake(0, 0, 0, spacing / 2);
            break;
        default:
            break;
    }
    
}

@end
