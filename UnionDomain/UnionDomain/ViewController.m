//
//  ViewController.m
//  UnionDomain
//
//  Created by Alan on 3/6/20.
//  Copyright © 2020 zhaixingzhi. All rights reserved.
//

#import "ViewController.h"
#import "XZArthur.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    XZArthur *arthur = [[XZArthur alloc]init];
    arthur.front = YES;
    arthur.back  = YES;
    arthur.right = YES;
    arthur.left  = YES;
    NSLog(@"联合体--位域");
//    01 01 01 01 00 00 00 00  这里至少会使用4个字节存这个4个属性
//    这里我们就对属性有浪费
//    我们这里可以使用char类型进行标示
//    char 0000 0001  我们可以使用第一位为1标示向前，第二位为1标示向后，第三位为0标示向左，第四位为1标示向右，这样我们就只用了4个位置(4个位置二进制中标示为8)，不到一个字节，这样就大大的节省了内存空间
//    由此我们就发现如果直接使用属性会很浪费空间，所以我们这里就可以使用联合体来标示这几个位置
//    即为，我们这里只用一个char类型，让其中的属性共用内存，共用内存大小为，联合体中最大的那个内存
    
    // Do any additional setup after loading the view.
}


@end
