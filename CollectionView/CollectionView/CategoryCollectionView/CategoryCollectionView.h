//
//  CategoryCollectionView.h
//  CollectionView
//
//  Created by 点创科技 on 17/8/2.
//  Copyright © 2017年 shangshuai. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^clickButtonBlock)(NSInteger btnCilck);
@interface CategoryCollectionView : UIView
@property (nonatomic, strong) NSArray *dataArray;
@property (nonatomic, assign) NSInteger selectedIndex;
@property (nonatomic, copy) clickButtonBlock clickindex;
@end
