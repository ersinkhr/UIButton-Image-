//
//  UIButton+Image.h
//  TestPlayground
//
//  Created by Ersin Kahraman on 19.03.2019.
//  Copyright © 2019 Ersin Kahraman. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum: NSUInteger {
    TitlePositionTop,
    TitlePositionBottom,
    TitlePositionLeft,
    TitlePositionRight
}TitlePosition;

@interface UIButton (Image)
-(void)setImage:(UIImage *)image withTitle:(NSString *)title withTitlePosition:(TitlePosition)titlePosition withSpacing:(CGFloat)spacing;
@end
