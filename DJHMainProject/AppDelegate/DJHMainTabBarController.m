//
//  DJHMainTabBarController.m
//  DJHMainProject
//
//  Created by 段佳欢 on 2019/8/6.
//  Copyright © 2019 duanjiahuan. All rights reserved.
//

#import "DJHMainTabBarController.h"

@interface DJHMainTabBarController ()

@end

@implementation DJHMainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self buildView];
}

- (void)buildView
{
    NSMutableArray *vcArray = [NSMutableArray array];
    NSMutableArray *vcNormalImgArray = [NSMutableArray array];
    NSMutableArray *vcSelectedImgArray = [NSMutableArray array];
    NSMutableArray *vcTitleArray = [NSMutableArray array];
    
    Class MessageListClass = NSClassFromString(@"DJHMessageListViewController");
    UIViewController *messageListVC = [[MessageListClass alloc] init];
    if (messageListVC) {
        [vcArray addObject:messageListVC];
        [vcNormalImgArray addObject:@"tabBar_message_normal"];
        [vcSelectedImgArray addObject:@"tabBar_message_selected"];
        [vcTitleArray addObject:@"消息"];
    }
    
    Class ContactsListClass = NSClassFromString(@"DJHContactsListViewController");
    UIViewController *contactsListVC = [[ContactsListClass alloc] init];
    if (contactsListVC) {
        [vcArray addObject:contactsListVC];
        [vcNormalImgArray addObject:@"tabBar_contacts_normal"];
        [vcSelectedImgArray addObject:@"tabBar_contacts_selected"];
        [vcTitleArray addObject:@"联系人"];
    }
    
    Class WorkbenchListClass = NSClassFromString(@"DJHWorkbenchListViewController");
    UIViewController *workbenchListVC = [[WorkbenchListClass alloc] init];
    if (workbenchListVC) {
        [vcArray addObject:workbenchListVC];
        [vcNormalImgArray addObject:@"tabBar_workbench_normal"];
        [vcSelectedImgArray addObject:@"tabBar_workbench_selected"];
        [vcTitleArray addObject:@"工作台"];
    }
    
    Class MyListClass = NSClassFromString(@"DJHMyListViewController");
    UIViewController *myListVC = [[MyListClass alloc] init];
    if (myListVC) {
        [vcArray addObject:myListVC];
        [vcNormalImgArray addObject:@"tabBar_my_normal"];
        [vcSelectedImgArray addObject:@"tabBar_my_selected"];
        [vcTitleArray addObject:@"我的"];
    }
    
    UIFont *vcTitleFont = [UIFont systemFontOfSize:10];
    UIColor *vcNormalTitleColor = [UIColor colorWithHexString:@"#999999"];
    UIColor *vcSelectedTitleColor = [UIColor colorWithHexString:@"#4CAF50"];
    
    [self setTabBarChildViewControllerWithVCArray:vcArray vcNormalImgArray:vcNormalImgArray vcSelectedImgArray:vcSelectedImgArray vcTitleArray:vcTitleArray vcTitleFont:vcTitleFont vcNormalTitleColor:vcNormalTitleColor vcSelectedTitleColor:vcSelectedTitleColor];
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
