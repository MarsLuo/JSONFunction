//
//  NSString+JSON.m
//  Cicada
//
//  Created by 骆杨 on 10/29/14.
//  Copyright (c) 2014 thinkjoy. All rights reserved.
//

#import "NSString+JSON.h"

@implementation NSString (JSON)

+ (NSData *) jsonDateWithNSDictionary:(NSDictionary *)dict{
    NSError *error = nil;
    NSData *requestBody = [NSJSONSerialization dataWithJSONObject:dict options:0 error:&error];
    if(error == nil)
    {
//        NSLog(@"Serialization body: %@",dict);
    }else {
        NSLog(@"Serialization Eror: %@",error);
    }
    return requestBody;
}

+ (id) jsonObjectWithData:(NSData *) data{
    NSError *error = nil;
    id jsonObject = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers|NSJSONReadingMutableLeaves|NSJSONReadingAllowFragments error:&error];
    if(error == nil)
    {
//        NSLog(@"Serialization body: %@",jsonObject);
    }else {
        NSLog(@"Serialization Eror: %@",error);
    }
    return jsonObject;
}

+ (NSString *) jsonStringWithNSDictionary:(NSDictionary *) dict{
    NSData *jsonData = [NSString jsonDateWithNSDictionary:dict];
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    return jsonString;
}

+ (id) jsonObjectWithNSString:(NSString *) jsonString{
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    id jsonObject = [NSString jsonObjectWithData:jsonData];
    return jsonObject;
}

@end
