//
//  MLJSONExtension.h
//  Pods
//
//  Created by yluo on 16/6/12.
//
//

/**
 *  @brief 通过本分类可以便捷的将JSON格式的NSString，NSData和NSDictionary之间互相转化
 */

#import <Foundation/Foundation.h>

@interface NSData (JSON)

/**
 *  @brief 将NSData对象转化为字典或者数组
 *
 *  @return 返回字段或者数组
 */
- (id) zl_jsonObject;

@end

@interface NSString (JSON)

/**
 *  @brief 将NSString对象转化为字典或者数组
 *
 *  @return 返回字段或者数组
 */
- (id) zl_jsonObject;

@end

@interface NSDictionary (JSON)

/**
 *  @brief 将字典对象转化为JSON格式的NSData
 *
 *  @return JSON格式的Data
 */
- (NSData *) zl_jsonData;

/**
 *  @brief 将字典对象转化为JSON格式的NSString
 *
 *  @return JSON格式的NSString
 */
- (NSString *) zl_jsonString;

@end
