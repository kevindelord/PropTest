//
//  ClassInfo.m
//  PropTest
//
//  Created by Pierre Rothmaler on 23/09/15.
//  Copyright (c) 2015 Pierre Rothmaler. All rights reserved.
//

#import "ClassInfo.h"
#import <objc/runtime.h>

@implementation ClassInfo

static const char *getPropertyType(objc_property_t property) {
	const char *attributes = property_getAttributes(property);
	char buffer[1 + strlen(attributes)];
	strcpy(buffer, attributes);
	char *state = buffer, *attribute;
	while ((attribute = strsep(&state, ",")) != NULL) {
		if (attribute[0] == 'T') {
			return (const char *)[[NSData dataWithBytes:(attribute + 3) length:strlen(attribute) - 4] bytes];
		}
	}
	return "@";
}

+ (NSDictionary *)propertyInfoForClass:(Class)class {
	unsigned int outCount;
	unsigned int i;

	objc_property_t *properties		= class_copyPropertyList(class, &outCount);
	NSMutableDictionary *classInfo	= [NSMutableDictionary new];

	for(i = 0; i < outCount; i++) {
		objc_property_t property	= properties[i];
		const char *propName		= property_getName(property);

		if(propName) {
			const char *propType	= getPropertyType(property);
			NSString *propertyName	= [NSString stringWithCString:propName encoding:[NSString defaultCStringEncoding]];
			NSString *propertyType	= [NSString stringWithCString:propType encoding:[NSString defaultCStringEncoding]];

			classInfo[propertyName] = propertyType;
		}
	}

	free(properties);
	return classInfo;
}


@end
