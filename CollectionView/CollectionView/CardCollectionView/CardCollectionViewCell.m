//
//  CardCollectionViewCell.m
//  CollectionView
//
//  Created by 点创科技 on 17/8/2.
//  Copyright © 2017年 shangshuai. All rights reserved.
//

#import "CardCollectionViewCell.h"
#import "Masonry.h"

@implementation CardCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.contentView.backgroundColor=[UIColor whiteColor];
        UIImageView *imageView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"beautiful"]];
        [self.contentView addSubview:imageView];
        [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.contentView);
        }];
      
   
    }
    return self;
}
@end
