//
//  XZArthur.h
//  UnionDomain
//
//  Created by Alan on 3/6/20.
//  Copyright © 2020 zhaixingzhi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XZArthur : NSObject
@property (nonatomic, assign) BOOL front;
@property (nonatomic, assign) BOOL back;
@property (nonatomic, assign) BOOL left;
@property (nonatomic, assign) BOOL right;
@property (nonatomic, assign) BOOL bigRecruit;


- (void)setFront:(BOOL)isFront;
- (BOOL)isFront;
//
- (void)setBack:(BOOL)isBack;
- (BOOL)isBack;

@end

NS_ASSUME_NONNULL_END
