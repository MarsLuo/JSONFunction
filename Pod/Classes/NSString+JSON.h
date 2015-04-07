//
//  NSString+JSON.h
//  Cicada
//
//  Created by 骆杨 on 10/29/14.
//  Copyright (c) 2014 thinkjoy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (JSON)

+ (NSData *) jsonDateWithNSDictionary:(NSDictionary *)dict;

+ (id) jsonObjectWithData:(NSData *) data;

+ (NSString *) jsonStringWithNSDictionary:(NSDictionary *) dict;

+ (id) jsonObjectWithNSString:(NSString *) jsonString;

@end
