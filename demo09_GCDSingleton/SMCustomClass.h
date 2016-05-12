//
//  SMCustomClass.h
//  demo09_GCDSingleton
//
//  Created by LuoShimei on 16/5/12.
//  Copyright © 2016年 罗仕镁. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SMCustomClass : NSObject
/** 对外公开的使用单例的接口 */
+ (instancetype)shareCustomClass;
@end
