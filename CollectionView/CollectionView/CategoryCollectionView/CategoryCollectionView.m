//
//  CategoryCollectionView.m
//  CollectionView
//
//  Created by 点创科技 on 17/8/2.
//  Copyright © 2017年 shangshuai. All rights reserved.
//

#import "CategoryCollectionView.h"
#import "CategoryCollectionViewCell.h"
#import "Masonry.h"


@interface CategoryCollectionView()<UICollectionViewDelegate,UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *myCollectionView;
@property (nonatomic, strong) CategoryCollectionViewCell *myCell;
@end
static NSString * const myCollectId = @"CategoryCollectionViewCell";
@implementation CategoryCollectionView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
        // 水平滚动
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        layout.estimatedItemSize=CGSizeMake(60, 28);
        UICollectionView *myCollectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
        myCollectionView.dataSource = self;
        myCollectionView.delegate = self;
        myCollectionView.showsHorizontalScrollIndicator=false;
        [self addSubview:myCollectionView];
        [myCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self).offset(10);
            make.right.equalTo(self).offset(-10);
            make.top.equalTo(self);
            make.height.equalTo(@30);
        }];
        
        myCollectionView.backgroundColor=[UIColor colorWithRed:246.0/255.0 green:246.0/255.0 blue:246.0/255.0 alpha:1];
        self.myCollectionView=myCollectionView;
        
        [self.myCollectionView registerClass:[CategoryCollectionViewCell class] forCellWithReuseIdentifier:myCollectId];
        
        
    }
    return self;
}
#pragma mark - <UICollectionViewDelegate>
-(NSInteger )numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}



- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    CategoryCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:myCollectId forIndexPath:indexPath];
    if (indexPath.row%2) {
        [cell.myButton setTitle:@"Day day up" forState:UIControlStateNormal];
    }else{
        [cell.myButton setTitle:@"好好学习" forState:UIControlStateNormal];
    }
    if (indexPath.row==self.selectedIndex) {
        cell.isSelected=YES;
        self.myCell=cell;
        
    }else{
        cell.isSelected=false;
    }
    
    return cell;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row==self.selectedIndex) {
        return;
    }
    CategoryCollectionViewCell *cell=[collectionView cellForItemAtIndexPath:indexPath];
    self.myCell.isSelected=false;
    self.myCell=cell;
    self.myCell.isSelected=YES;
    self.selectedIndex=indexPath.row;
    
    if (self.clickindex) {
        self.clickindex(indexPath.row);
    }

}


@end
