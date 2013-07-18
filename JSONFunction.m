//
//  JsonFunction.m
//  
//
//  Created by Mars Luo on 13-6-24.
//  Copyright (c) 2013年 Mars Luo. All rights reserved.
//

#import "JSONFunction.h"

@implementation JSONFunction

+ (NSData *) jsonDateWithNSDictionary:(NSDictionary *)dict{
    NSError *error = nil;
    NSData *requestBody = [NSJSONSerialization dataWithJSONObject:dict options:NSJSONWritingPrettyPrinted error:&error];
    if(error == nil)
    {
		DLog(@"Serialization body: %@",dict);
    }else {
        DLog(@"Serialization Eror: %@",error);
    }
    return requestBody;
}

+ (id) jsonObjectWithData:(NSData *) data{
    NSError *error = nil;
    id jsonObject = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
    if(error == nil)
    {
		DLog(@"Serialization body: %@",jsonObject);
    }else {
        DLog(@"Serialization Eror: %@",error);
    }
    return jsonObject;
}

+ (NSString *) jsonStringWithNSDictionary:(NSDictionary *) dict{
    NSData *jsonData = [JSONFunction jsonDateWithNSDictionary:dict];
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    return jsonString;
}

+ (id) jsonObjectWithNSString:(NSString *) jsonString{
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    id jsonObject = [JSONFunction jsonObjectWithData:jsonData];
    return jsonObject;
}

@end
