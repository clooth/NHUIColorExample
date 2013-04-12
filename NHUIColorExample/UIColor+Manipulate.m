//
//  UIColor+Manipulate.m
//  CameraPlusButton
//
//  Created by Nico Hämäläinen on 4/12/13.
//  Copyright (c) 2013 Nico Hämäläinen. All rights reserved.
//

#import "UIColor+Manipulate.h"

@implementation UIColor (Manipulate)

- (UIColor *)lighten:(float)amount
{
    float h, s, b, a;
    if ([self getHue:&h saturation:&s brightness:&b alpha:&a])
    {
        return [UIColor colorWithHue:h
                          saturation:s
                          brightness:b + (b * (amount / 100.0))
                               alpha:a];
    }
    return nil;
}

- (UIColor *)darken:(float)amount
{
    float h, s, b, a;
    if ([self getHue:&h saturation:&s brightness:&b alpha:&a])
        return [UIColor colorWithHue:h
                          saturation:s
                          brightness:(b - (b * (amount / 100)))
                               alpha:a];
    return nil;
}

@end
