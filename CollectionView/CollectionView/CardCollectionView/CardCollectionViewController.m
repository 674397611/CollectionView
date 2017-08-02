//
//  CardCollectionViewController.m
//  CollectionView
//
//  Created by 点创科技 on 17/8/2.
//  Copyright © 2017年 shangshuai. All rights reserved.
//

#import "CardCollectionViewController.h"
#import "CardCollectionViewFlowLayout.h"
#import "CardCollectionViewCell.h"
#import "Masonry.h"

@interface CardCollectionViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>

@end
static NSString * const CardCollectionViewId = @"CardCollectionView";
@implementation CardCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self MyView];
    
}
-(void)MyView{
    self.view.backgroundColor=[UIColor whiteColor];
    self.title=@"卡片放大";
    // 创建布局
    CardCollectionViewFlowLayout *layout = [[CardCollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake(self.view.frame.size.width-100, self.view.frame.size.height-40);
    layout.minimumLineSpacing=25;
    // 创建CollectionView
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    collectionView.dataSource = self;
    collectionView.delegate = self;
    collectionView.backgroundColor=[UIColor whiteColor];

    
    collectionView.contentInset=UIEdgeInsetsMake(0, 50, 0, 50);
    collectionView.showsHorizontalScrollIndicator=false;
    [self.view addSubview:collectionView];
    [collectionView reloadData];
    [collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    // 注册
    [collectionView registerClass:[CardCollectionViewCell class] forCellWithReuseIdentifier:CardCollectionViewId];
    
}
#pragma mark - <UICollectionViewDataSource>
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CardCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CardCollectionViewId forIndexPath:indexPath];
    cell.backgroundColor=[UIColor greenColor];
    
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
