//
//  marco.h
//  swiftTest
//
//  Created by pactera on 8/6/15.
//  Copyright (c) 2015 pactera. All rights reserved.
//

#define UP_COL_RGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]