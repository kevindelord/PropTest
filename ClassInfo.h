//
//  ClassInfo.h
//  PropTest
//
//  Created by Pierre Rothmaler on 23/09/15.
//  Copyright (c) 2015 Pierre Rothmaler. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassInfo : NSObject

+ (NSDictionary *)propertyInfoForClass:(Class)class;

@end
