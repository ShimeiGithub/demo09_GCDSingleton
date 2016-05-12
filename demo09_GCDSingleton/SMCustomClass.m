//
//  SMCustomClass.m
//  demo09_GCDSingleton
//
//  Created by LuoShimei on 16/5/12.
//  Copyright © 2016年 罗仕镁. All rights reserved.
//

/**
    问题：instancetype类型和id类型有什么区别？
    答案：instancetype类型只能作为返回值类型，而id可以作为属性、参数和返回值类型，
         instancetype在编译的时候能够判断返回值的类型而id不行。
         当一个类返回相同类的实例变量的时候使用instancetype是最合适了。
 */

#import "SMCustomClass.h"

@implementation SMCustomClass
/** 全局静态变量，保证只有一个实例对象 */
static id _instance = nil;

/** 使用dispatch_once的目的是不管在外部调用这个接口多少次，都
    保证了每次获取到的对象都是同一个实例对象————即单例*/
+ (instancetype)shareCustomClass{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}

- (instancetype)copyWithZone{
    return _instance;
}

@end
