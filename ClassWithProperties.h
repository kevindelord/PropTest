//
//  ClassWithProperties.h
//  PropTest
//
//  Created by Pierre Rothmaler on 23/09/15.
//  Copyright (c) 2015 Pierre Rothmaler. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassWithProperties : NSObject

@property (nonatomic, copy) NSString	*name;
@property (nonatomic, copy) NSNumber	*age;
@property (nonatomic, copy) NSSet		*interests;

@end
