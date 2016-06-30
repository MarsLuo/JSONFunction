//
//  MLJSONExtension.m
//  Pods
//
//  Created by yluo on 16/6/12.
//
//

#import "ZLJSONExtension.h"

@implementation NSData (JSON)

/**
 *  @brief 将NSData对象转化为字典或者数组
 *
 *  @return 返回字段或者数组
 */
- (id) zl_jsonObject{
    NSError *error = nil;
    id jsonObject = nil;
    @try {
        jsonObject = [NSJSONSerialization JSONObjectWithData:self options:NSJSONReadingMutableContainers|NSJSONReadingMutableLeaves|NSJSONReadingAllowFragments error:&error];
    }
    @catch (NSException *exception) {
        NSLog(@"exception=%@", exception);
        jsonObject = @{};
    }
    @finally {
        
    }
    if(error == nil)
    {
        
    }else {
        NSLog(@"Serialization Eror: %@",error);
    }
    return jsonObject;
}

@end

@implementation NSString (JSON)

/**
 *  @brief 将NSString对象转化为字典或者数组
 *
 *  @return 返回字段或者数组
 */
- (id) zl_jsonObject{
    
    NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
    id jsonObject = [jsonData zl_jsonObject];
    return jsonObject;
}

@end

@implementation NSDictionary (JSON)

/**
 *  @brief 将字典对象转化为JSON格式的NSData
 *
 *  @return JSON格式的Data
 */
- (NSData *) zl_jsonData{
    NSError *error = nil;
    NSData *jsonData = nil;
    @try {
        jsonData = [NSJSONSerialization dataWithJSONObject:self options:0 error:&error];
    }
    @catch (NSException *exception) {
        NSLog(@"exception=%@", exception);
        jsonData = [NSData data];
    }
    @finally {
        
    }
    if(error == nil)
    {
    }else {
        NSLog(@"Serialization Eror: %@",error);
    }
    return jsonData;
}

/**
 *  @brief 将字典对象转化为JSON格式的NSString
 *
 *  @return JSON格式的NSString
 */
- (NSString *) zl_jsonString{
    NSData *jsonData = [self zl_jsonData];
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    return jsonString;
}

@end
