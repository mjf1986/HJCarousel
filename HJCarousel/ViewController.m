//
//  ViewController.m
//  HJCarousel
//
//  Created by 剑锋 莫 on 16/7/5.
//  Copyright © 2016年 剑锋 莫. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewController.h"
#import "HJCarouselViewLayout.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

-(void)viewDidAppear:(BOOL)animated
{
    HJCarouselViewLayout *layout = nil;
    int style = 0;
    switch (style) {
        case 0:
            layout = [[HJCarouselViewLayout alloc] initWithAnim:HJCarouselAnimLinear];
            layout.visibleCount = 6;
            break;
        case 1:
            layout = [[HJCarouselViewLayout alloc] initWithAnim:HJCarouselAnimRotary];
            break;
        case 2:
            layout = [[HJCarouselViewLayout alloc] initWithAnim:HJCarouselAnimCarousel];
            break;
        case 3:
            layout = [[HJCarouselViewLayout alloc] initWithAnim:HJCarouselAnimCarousel1];
            break;
        case 4:
            layout = [[HJCarouselViewLayout alloc] initWithAnim:HJCarouselAnimCoverFlow];
            break;
        default:
            layout = [[HJCarouselViewLayout alloc] initWithAnim:HJCarouselAnimLinear];
            break;
    }
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    layout.itemSize = CGSizeMake(240, CGRectGetHeight(self.view.bounds)*4/5);
    CollectionViewController *vc = [[CollectionViewController alloc] initWithCollectionViewLayout:layout];
    
    [self presentViewController:vc
                           animated:YES
                         completion:^(void){
                             NSLog(@"Picker View Controller is presented");
                         }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
