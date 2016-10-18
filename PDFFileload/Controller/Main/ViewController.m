//
//  ViewController.m
//  PDFFileload
//
//  Created by YXZT on 16/10/17.
//  Copyright © 2016年 YXZT. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThreeViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (nonatomic, strong)NSString *fileName;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *fileArr = @[@"01-多线程网络.pdf",@"TestPage.pdf"];
    self.fileName = fileArr[0];
    NSArray *titleArr = @[@"效果1",@"效果2",@"效果3"];
    for (int i = 0 ; i<3; i++) {
        UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(50, 104+40*i+30*(i+1), 100, 40)];
        [button setBackgroundColor:[UIColor blackColor]];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [button setTitle:titleArr[i] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
        button.tag = i;
        [self.view addSubview:button];
    }
}

-(void)clickButton:(UIButton *)sender
{
    
    if (sender.tag==0) {
        
        FirstViewController *firstVC = [[FirstViewController alloc]init];
        firstVC.fileName = self.fileName;
        [self.navigationController pushViewController:firstVC animated:YES];
        
    }else if (sender.tag==1){
        SecondViewController *secondVC = [[SecondViewController alloc]init];
        secondVC.fileName = self.fileName;
        [self.navigationController pushViewController:secondVC animated:YES];
    }else{
        
        ThreeViewController *threeVC = [[ThreeViewController alloc]init];
        [self.navigationController pushViewController:threeVC animated:YES];
        
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"MemoryWarning");
}




@end
