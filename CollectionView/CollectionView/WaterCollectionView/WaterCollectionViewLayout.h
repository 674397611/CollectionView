//
//  WaterCollectionViewLayout.h
//  CollectionView
//
//  Created by 点创科技 on 17/8/30.
//  Copyright © 2017年 shangshuai. All rights reserved.
//

#import <UIKit/UIKit.h>



@protocol WaterCollectionViewLayoutDelegate <NSObject>
@required
- (CGFloat)waterLayout:(UICollectionViewLayout *)waterLayout itemWidth:(CGFloat)itemWidte indexPath:(NSIndexPath *)indexPath;
@optional
/** 行间距 */
- (CGFloat)rowIntervalInWaterFlowLayout:(UICollectionViewLayout *)layout;
/** 列间距 */
- (CGFloat)columnIntervalInWaterFlowLayout:(UICollectionViewLayout *)layout;
/** 列数 */
- (NSInteger)columnCountInWaterFlowLayout:(UICollectionViewLayout *)layout;
/** collectionView内边距 */
- (UIEdgeInsets)edgeInsetsInWaterFlowLayout:(UICollectionViewLayout *)layout;

@end


@interface WaterCollectionViewLayout : UICollectionViewLayout

/** 代理属性 */
@property (nonatomic , weak)id<WaterCollectionViewLayoutDelegate> delegate;


@end
