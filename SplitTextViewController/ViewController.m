//
//  ViewController.m
//  SplitTextViewController
//
//  Created by hczb-hxj on 13-11-12.
//  Copyright (c) 2013年 hczb-hxj. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    void (^inlineBlock)(int, int);
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, 100, 50)];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn setTitle:@"hahahaha" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:btn];
    
    int (^myBlock)(int) = ^(int num){
        return 10 * num;
    };
    
    int test1 = myBlock(10);
    
    void (^block)() = ^(){
        NSLog(@"block test");
    };
    
    block();
    
    NSInteger (^blockOne)(NSArray *,NSInteger) = ^NSInteger(NSArray *array, NSInteger i) {
        return array.count * i;
    };
    
    NSInteger ff = blockOne(@[@"e", @"f"], 4);
    
    
    __block int X = 10;
    id(^resetXBlock)(int) = ^(int Y) {
        X = 100;
        NSArray *info = @[@"3"];
        return info;
    };
    
    resetXBlock(30);
    NSLog(@"X :%d",X);


    inlineBlock = ^(int i, int j){
        
    };
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
