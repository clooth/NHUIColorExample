//
//  UIColor+Manipulate.h
//  CameraPlusButton
//
//  Created by Nico Hämäläinen on 4/12/13.
//  Copyright (c) 2013 Nico Hämäläinen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface UIColor (Manipulate)

- (UIColor *)lighten:(float)amount;
- (UIColor *)darken:(float)amount;

@end
