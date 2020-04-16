//
//  ViewController.m
//  MemoryAddress
//
//  Created by kkk on 2020/4/16.
//  Copyright © 2020 kamy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

int globalA = 1;
int globalB;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"内存地址";
    
    [self test];
}

- (void)test {
    static int staticA = 10;
    static int staticB;
    
    int stackA = 20;
    int stackB;
    int stackC = 40;
    
    // ASCII 组成的
    NSString *littleStr = @"100";
    NSString *middleStr = @"100asksjas";
    NSString *bigStr = @"100adskjlkjdlaajskjdsaljskjlasjdklajskdkasdklaksdljasdjklasjkdjkas";
    
    NSString *chineseStr = @"汉字字符串";
    NSString *chineseLongStr = @"汉字字符串很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长";
    
    NSObject *obj1 = [[NSObject alloc] init];
    NSObject *obj2 = [[NSObject alloc] init];
    
    NSLog(@"globalA : %p", &globalA);
    NSLog(@"globalB : %p", &globalB);
    
    NSLog(@"staticA : %p", &staticA);
    NSLog(@"staticB : %p", &staticB);
    
    NSLog(@"stackA : %p", &stackA);
    NSLog(@"stackB : %p", &stackB);
    NSLog(@"stackC : %p", &stackC);
    
    NSLog(@"littleStr : %p", littleStr);
    NSLog(@"middleStr : %p", middleStr);
    NSLog(@"bigStr : %p", bigStr);
    
    NSLog(@"chineseStr : %p", chineseStr);
    NSLog(@"chineseLongStr : %p", chineseLongStr);
    
    NSLog(@"obj1 : %p", obj1);
    NSLog(@"obj2 : %p", obj2);
    
}

// 低地址 → 高地址

/*
 littleStr      : 0x10c114040
 middleStr      : 0x10c114060
 bigStr         : 0x10c114080
 chineseStr     : 0x10c1140a0
 chineseLongStr : 0x10c1140c0
 
 已初始化数据 .data
 globalA : 0x10c1164d0
 staticA : 0x10c1164d4
 
 未初始化数据  .bbs
 globalB : 0x10c11665c
 staticB : 0x10c116658
 
 堆 .heap
 obj1 : 0x60000058d250
 obj2 : 0x60000058d260
 
 栈  .stack  逐渐变小
 stackA : 0x7ffee3aea0fc
 stackB : 0x7ffee3aea0f8
 stackC : 0x7ffee3aea0f4
 
 
 */
@end
