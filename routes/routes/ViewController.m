//
//  ViewController.m
//  routes
//
//  Created by gqy on 2019/3/19.
//  Copyright © 2019年 guoqingyang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSString *name = @"中国";
    NSString *url = @"RouteOne://push/TurnViewController?titleText=fromFirst&name=中国";
    NSCharacterSet *allowCharacters = [[NSCharacterSet characterSetWithCharactersInString:name] invertedSet];
    NSString *encodedUrl = [url stringByAddingPercentEncodingWithAllowedCharacters:allowCharacters];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:encodedUrl]];
}


@end
