//
//  NSString+JSON.h
//  Cicada
//
//  Created by 骆杨 on 10/29/14.
//  Copyright (c) 2014 thinkjoy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (JSON)

+ (NSData *) jsonDateWithJSONObject:(id)jsonObject;

+ (id) jsonObjectWithData:(NSData *) data;

+ (NSString *) jsonStringWithJSONObject:(id) jsonObject;

+ (id) jsonObjectWithNSString:(NSString *) jsonString;

@end
