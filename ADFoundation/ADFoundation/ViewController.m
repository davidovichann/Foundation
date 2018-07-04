//
//  ViewController.m
//  ADFoundation
//
//  Created by Анна on 04.07.2018.
//  Copyright © 2018 ad. All rights reserved.
//

#import "ViewController.h"
#import "ADNumbers.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%ld", (long)[ADNumbers randomIntegerNumberFrom:0 to:0]);
    NSLog(@"%ld", (long)[ADNumbers randomIntegerNumberFrom:1 to:1]);
    NSLog(@"%ld", (long)[ADNumbers randomIntegerNumberFrom:2 to:2]);
    NSLog(@"%ld", (long)[ADNumbers randomIntegerNumberFrom:3 to:3]);
    NSLog(@"%ld", (long)[ADNumbers randomIntegerNumberFrom:4 to:4]);
    NSLog(@"%ld", (long)[ADNumbers randomIntegerNumberFrom:5 to:5]);
    NSLog(@"%ld", (long)[ADNumbers randomIntegerNumberFrom:0 to:6]);
    NSLog(@"%ld", (long)[ADNumbers randomIntegerNumberFrom:0 to:110]);
    NSLog(@"%ld", (long)[ADNumbers randomIntegerNumberFrom:0 to:115]);
    NSLog(@"%ld", (long)[ADNumbers randomIntegerNumberFrom:NSIntegerMin to:NSIntegerMax]);
    
    NSLog(@"UU - %ld", (long)[ADNumbers randomUnsignedIntegerNumberFrom:-100 to:2]);
    NSLog(@"UU - %ld", (long)[ADNumbers randomUnsignedIntegerNumberFrom:-10 to:2]);
    NSLog(@"UU - %ld", (long)[ADNumbers randomUnsignedIntegerNumberFrom:-1 to:2]);
    NSLog(@"UU - %ld", (long)[ADNumbers randomUnsignedIntegerNumberFrom:0 to:2]);
    NSLog(@"UU - %ld", (long)[ADNumbers randomUnsignedIntegerNumberFrom:0 to:1]);
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
