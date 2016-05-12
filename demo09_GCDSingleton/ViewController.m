//
//  ViewController.m
//  demo09_GCDSingleton
//
//  Created by LuoShimei on 16/5/12.
//  Copyright © 2016年 罗仕镁. All rights reserved.
//

#import "ViewController.h"
#import "SMCustomClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SMCustomClass *custumClassObject = [SMCustomClass shareCustomClass];
    NSLog(@"custumClassObject = %@",custumClassObject);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
