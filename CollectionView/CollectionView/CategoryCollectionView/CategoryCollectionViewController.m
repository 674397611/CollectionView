//
//  CategoryCollectionViewController.m
//  CollectionView
//
//  Created by 点创科技 on 17/8/2.
//  Copyright © 2017年 shangshuai. All rights reserved.
//

#import "CategoryCollectionViewController.h"
#import "CategoryCollectionView.h"

@interface CategoryCollectionViewController ()

@end

@implementation CategoryCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title=@"分类滚动";
    for (int i=0; i<5; i++) {
        CategoryCollectionView *myCollectionView = [[CategoryCollectionView alloc] initWithFrame:CGRectMake(0,64+i*30, self.view.frame.size.width,30)];
        [self.view addSubview:myCollectionView];
    }
    self.view.backgroundColor=[UIColor whiteColor];
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
