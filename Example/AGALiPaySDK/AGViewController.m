//
//  AGViewController.m
//  AGALiPaySDK
//
//  Created by AgenricWon on 06/08/2018.
//  Copyright (c) 2018 AgenricWon. All rights reserved.
//

#import "AGViewController.h"
#import <AlipaySDK/AlipaySDK.h>

@interface AGViewController ()

@end

@implementation AGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    BOOL result = [[AlipaySDK defaultService] isLogined];
    NSLog(@"isLogined - %d", result);
    [[AlipaySDK defaultService] payOrder:@"exampleorder" fromScheme:@"example.alipay" callback:^(NSDictionary *resultDic) {
        NSLog(@"reault - %@", resultDic);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
