//
//  WaterViewController.m
//  CollectionView
//
//  Created by 点创科技 on 17/8/30.
//  Copyright © 2017年 shangshuai. All rights reserved.
//

#import "WaterViewController.h"
#import "WaterCollectionViewLayout.h"

@interface WaterViewController ()<UICollectionViewDataSource , UICollectionViewDelegate , WaterCollectionViewLayoutDelegate>

@end

@implementation WaterViewController

static NSString *cellID = @"WaterCollectionViewcell";
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"瀑布流";
    WaterCollectionViewLayout *layout = [[WaterCollectionViewLayout alloc]init];
//    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
//    layout.itemSize=CGSizeMake(([UIScreen mainScreen].bounds.size.width-15)/2,([UIScreen mainScreen].bounds.size.width-15)/2*1.5);
//    layout.minimumLineSpacing=5;
//    layout.minimumInteritemSpacing=0;
//    layout.sectionInset=UIEdgeInsetsMake(5, 5, 5, 5);
    layout.delegate = self;
    UICollectionView *collectionView = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:layout];
    collectionView.dataSource = self;
    collectionView.delegate = self;
    collectionView.showsVerticalScrollIndicator = NO;
    collectionView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:collectionView];
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:cellID];
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 120;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    cell.backgroundColor = [self randomColor];
    return cell;
}
- (UIColor *)randomColor {
    CGFloat red = arc4random_uniform(255);
    CGFloat green = arc4random_uniform(255);
    CGFloat blue = arc4random_uniform(255);
    UIColor *color = [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1.0];
    return color;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"点击了第%ld个item" , (long)indexPath.row);
}
#pragma mark -- WaterCollectionViewLayoutDelegate
//设置每一行的高度
- (CGFloat)waterLayout:(UICollectionViewLayout *)waterLayout itemWidth:(CGFloat)itemWidte indexPath:(NSIndexPath *)indexPath {
    return 120 + arc4random_uniform(100);
}
//设置列数
- (NSInteger)columnCountInWaterFlowLayout:(UICollectionViewLayout *)layout {
    return 3;
}

//设置边缘间的距离
- (UIEdgeInsets)edgeInsetsInWaterFlowLayout:(UICollectionViewLayout *)layout {
    return UIEdgeInsetsMake(20, 10, 10, 10);
}
//设置列间距
- (CGFloat)columnIntervalInWaterFlowLayout:(UICollectionViewLayout *)layout {
    return 15;
}
//设置行间距
- (CGFloat)rowIntervalInWaterFlowLayout:(UICollectionViewLayout *)layout {
    return 20;
}

@end
