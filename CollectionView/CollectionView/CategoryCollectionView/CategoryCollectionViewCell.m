//
//  CategoryCollectionViewCell.m
//  CollectionView
//
//  Created by 点创科技 on 17/8/2.
//  Copyright © 2017年 shangshuai. All rights reserved.
//

#import "CategoryCollectionViewCell.h"

#import "Masonry.h"

@implementation CategoryCollectionViewCell
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        UIButton *myButton=[UIButton new];
        [myButton setTitle:@"天天向上" forState:UIControlStateNormal];
        [self.contentView addSubview:myButton];
        myButton.titleLabel.font=[UIFont systemFontOfSize:16];
        [myButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [myButton setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
        [myButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.equalTo(@20);
            make.left.right.equalTo(self.contentView);
    
            make.top.bottom.equalTo(self.contentView);
        }];
        myButton.contentEdgeInsets=UIEdgeInsetsMake(0, 5, 0, 5);
        myButton.layer.borderColor=[UIColor blueColor].CGColor;
        myButton.layer.borderWidth=1;
        myButton.layer.cornerRadius=10;
        myButton.userInteractionEnabled=false;
        self.myButton=myButton;
        
        
    }
    return self;
}
-(void)setIsSelected:(BOOL)isSelected{
    if (isSelected) {
        self.myButton.selected=YES;
        self.myButton.layer.borderColor=[UIColor blueColor].CGColor;
    }else{
        self.myButton.layer.borderColor=[UIColor grayColor].CGColor;
        self.myButton.selected=false;
        
    }
}
@end
