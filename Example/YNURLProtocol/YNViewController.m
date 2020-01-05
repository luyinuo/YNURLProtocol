//
//  YNViewController.m
//  YNURLProtocol
//
//  Created by luyinuo on 01/05/2020.
//  Copyright (c) 2020 luyinuo. All rights reserved.
//

#import "YNViewController.h"

@interface YNViewController ()

@end

@implementation YNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLRequest *request = [[NSURLRequest alloc]initWithURL:[NSURL URLWithString:@"https://image.baidu.com/search/detail?ct=503316480&z=0&ipn=d&word=%E5%93%88%E5%93%88&step_word=&hs=0&pn=0&spn=0&di=65450&pi=0&rn=1&tn=baiduimagedetail&is=0%2C0&istype=0&ie=utf-8&oe=utf-8&in=&cl=2&lm=-1&st=undefined&cs=2651240977%2C1460066399&os=972101842%2C1910201839&simid=3523357946%2C420014021&adpicid=0&lpn=0&ln=1734&fr=&fmq=1578225996328_R&fm=&ic=undefined&s=undefined&hd=undefined&latest=undefined&copyright=undefined&se=&sme=&tab=0&width=undefined&height=undefined&face=undefined&ist=&jit=&cg=&bdtype=0&oriquery=&objurl=http%3A%2F%2Fwww.bqmao.com%2Fhahafile%2Fimages%2F690.jpg&fromurl=ippr_z2C%24qAzdH3FAzdH3Fooo_z%26e3B4wsj451jsfrtvp76j_z%26e3BgjpAzdH3F%25Ec%25l8%25Ab%25Em%25lb%25lF%25El%25Al%25Ba%25Ec%25A9%25A0%25E0%25AC%25l8AzdH3F%25Ec%25l8%25Ab%25Em%25lb%25lF%25El%25Al%25Ba%25Ec%25A9%25A0%25E0%25AC%25l8_z%26e3Bip4s&gsm=&rpstart=0&rpnum=0&islist=&querylist=&force=undefined"]];
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"%@-%@",response,error);
    }];
    [task resume];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
