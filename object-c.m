//
//  main.m
//  demo
//
//  Created by anjun on 12-9-25.
//  Copyright (c) 2012年 anjun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface A:NSObject {
    int a ;
}
-(void)f;
@end
@implementation A{

}
-(id) init{
    if (self = [super init]) {
        a =3;
    }
    return self;
}
-(void) f{
       NSLog(@"%@:this a f():%d;",self,a);
}

@end
@interface B:A {
 
}
//- f;
@end
@implementation B{
    
}
-(id) init{
    if (self = [super init]) {
        a =5;
    }
    return self;
}
//-(void)f{
//    NSLog(@"%@:this b f();",self);
//}

@end
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        A *a =[[A alloc]init];
        B *b = [[B alloc]init];
        [a f];
        [b f];
        [a f];
        
        NSLog(@"Hello, World!");
        
    }
    return 0;
}

