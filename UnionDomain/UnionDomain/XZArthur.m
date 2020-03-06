//
//  XZArthur.m
//  UnionDomain
//
//  Created by Alan on 3/6/20.
//  Copyright © 2020 zhaixingzhi. All rights reserved.
//

#import "XZArthur.h"

#define XZDirectionFrontMask    (1 << 0)  //1左移0位为1
#define XZDirectionBackMask     (1 << 1)  //1往左移1位为2
#define XZDirectionLeftMask     (1 << 2)  //1往左移2位为4
#define XZDirectionRightMask    (1 << 3)  //1往左移2位为8
#define XZDirectionBigRecruitMask    (1 << 4)  //1往左移7位

@interface XZArthur(){
    union {
//        联合体
        char bits;
        // 位域
        struct {
            char front          : 1;  //占一位
            char back           : 1;  //占1位
            char left           : 1;  //占1位
            char right          : 1;  //占1位
            char bigRecruit     : 8;  //占8位
        };

    } _direction;
}
@end

@implementation XZArthur

- (instancetype)init
{
    self = [super init];
    if (self) {
//        这里就标示为二进制的全部为0
        _direction.bits = 0b0000000000;
    }
    return self;
}

/**
  0000 0000  原始值
  0000 0001  传进来值
 |           进行或运算
  0000 0001  计算结果值为1
 
 
  0000 0000  原始值
  1111 1110  XZDirectionFrontMask取非值
 &           进行与运算算
  0000 0000  计算结 果值为0
 */
- (void)setFront:(BOOL)isFront {
    if (isFront) {
        _direction.bits |= XZDirectionFrontMask;
    } else {
        _direction.bits &= ~XZDirectionFrontMask;
    }
}

- (BOOL)isFront{
    return !!(_direction.bits & XZDirectionFrontMask);
}

- (void)setBack:(BOOL)isBack {
    _direction.back = isBack;
}
- (BOOL)isBack{
    return _direction.back;
}
- (void)setRight:(BOOL)right
{
    _direction.right = right;
}
- (BOOL)isRight
{
    return _direction.right;
}
- (void)setLeft:(BOOL)left
{
    _direction.left = left;
}
- (BOOL)isLeft
{
    return _direction.left;
}


@end
