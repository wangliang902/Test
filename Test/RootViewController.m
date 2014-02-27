//
//  RootViewController.m
//  Test
//
//  Created by ios on 14-2-24.
//  Copyright (c) 2014年 ios. All rights reserved.
//

#import "RootViewController.h"
#import "View.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    View *view = [[View alloc] initWithFrame:CGRectMake(10, 20, 300, 200)];
    view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
