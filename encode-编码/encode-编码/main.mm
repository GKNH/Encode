//
//  main.m
//  encode-编码
//
//  Created by Sun on 2019/10/23.
//  Copyright © 2019 Sun. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "SPerson.h"
#import <objc/runtime.h>
#import "MJClassInfo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        SPerson *p = [[SPerson alloc] init];
        
        mj_objc_class *cls = (__bridge mj_objc_class *)[SPerson class];
        class_rw_t *data = cls->data();
        [p test];
    }
    return 0;
}
