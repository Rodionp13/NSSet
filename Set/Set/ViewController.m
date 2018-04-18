//
//  ViewController.m
//  Set
//
//  Created by User on 4/18/18.
//  Copyright © 2018 Big Nerd Ranch. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    @autoreleasepool {
    //for array
    NSMutableArray *mutArrWithDuplicates = [NSMutableArray array];
    for(int i = 0; i < 30; i++) {
        if(i != 0 && 30 % i == 0) {
            [mutArrWithDuplicates addObject:[NSNumber numberWithInt:9999999]];
        } else {
            [mutArrWithDuplicates addObject: [NSNumber numberWithInt:i]];
        }
    }
    //Create NSArray, containing 30 objects. Add duplicates to array.
    NSArray *arrWithDuplicates = [NSArray arrayWithArray:mutArrWithDuplicates];
    
    
    //Use NSSet to exclude duplicates from array
    NSSet *setWithoutDupl = [NSSet setWithArray:arrWithDuplicates];
    NSLog(@"%@", setWithoutDupl);
    NSLog(@"%lu", [setWithoutDupl count]);
    NSLog(@"%lu", [arrWithDuplicates count]);
    NSLog(@"%@", arrWithDuplicates);
    
    NSMutableArray *forNumbersArr = [NSMutableArray array];
    for(int i = 0; i < 100; i++) {
        [forNumbersArr addObject:[NSNumber numberWithInt:i]];
    }
    
    
    //Create an array of 100 numbers. Check whether number 74 is contained inside an array.
    NSArray *numbers = [NSArray arrayWithArray:forNumbersArr];
    [numbers enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if([obj isEqual:[NSNumber numberWithInt: 74]]) {
            NSLog(@"contained!!!");
            *stop = YES;
        }
    }];//NSLog(@"%d", [numbers objectAtIndex:74]);
    
    
    //Transform array into NSSet and check whether number 74 is contained inside NSSet.
    NSSet *setNumbers = [[NSSet alloc] initWithArray:numbers];
    
    [setNumbers enumerateObjectsUsingBlock:^(id obj, BOOL * stop) {
        if([obj isEqual:[NSNumber numberWithInt:74]]) {
            NSLog(@"contained value = %@ in set!!!", obj);
            *stop = YES;
        }
    }];
        
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
