//
//  YNURLProtocol.m
//  Pods-YNURLProtocol_Example
//
//  Created by lyn on 2020/1/5.
//

#import "YNURLProtocol.h"
static NSString *const kProtocolKey = @"kProtocolKey";
@implementation YNURLProtocol
+ (BOOL)canInitWithRequest:(NSURLRequest *)request{
    if ([NSURLProtocol propertyForKey:kProtocolKey inRequest:request]) {
        return NO;
    }
    NSString *scheme = request.URL.scheme;
    NSString *absStr = request.URL.absoluteString;
    NSLog(@"%@-%@",scheme,absStr);
    NSString *extension = request.URL.pathExtension;
    NSArray *array = @[@"png",@"jpeg",@"gif",@"jpg"];
    if ([array containsObject:extension]) {
        return YES;
    }
    
    return YES;
}

// 需要在该方法中发起一个请求，对于NSURLConnection来说，就是创建一个NSURLConnection，对于NSURLSession，就是发起一个NSURLSessionTask
// 另外一点就是这个方法之后,会回调<NSURLProtocolClient>协议中的方法,
- (void)startLoading{
    NSString *absoluteStr =  self.request.URL.absoluteString;
    
    NSMutableURLRequest *request = self.request.mutableCopy;
    [NSURLProtocol setProperty:@(YES) forKey:kProtocolKey inRequest:request];
//    NSData *data = ...;
//    [self.client URLProtocol:self didLoadData:data];
    
    //如果需要重定向
    //    request.URL = [NSURL URLWithString:@"http://127.0.0.1:8080/"];
    //
    //    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
    //
    //        NSLog(@"startLoading == %@---%@",response,data);
    //
    //        [self.client URLProtocol:self didLoadData:data];
    //        [self.client URLProtocol:self didReceiveResponse:response cacheStoragePolicy:NSURLCacheStorageAllowed];
    //    }];
    if ([absoluteStr containsString:@"baidu.com"]) {
        NSLog(@"拦截到了");
    }
    
    
}
- (void)stopLoading{
    
}
+ (BOOL)requestIsCacheEquivalent:(NSURLRequest *)a toRequest:(NSURLRequest *)b{
    return [super requestIsCacheEquivalent:a toRequest:b];
}

//返回规范的request
+ (NSURLRequest *)canonicalRequestForRequest:(NSURLRequest *)request{
    return request;
}


@end
