//
//  MetaDataTool.m
//  Load_
//
//  Created by apple on 15/9/24.
//  Copyright (c) 2015年 tarena_. All rights reserved.
//

#import "MetaDataTool.h"
#import "Person.h"
@implementation MetaDataTool
static NSArray *_personsMessage = nil;
+ (NSArray *) personsMessage {
    if (!_personsMessage) {
        _personsMessage = [[self alloc]getAndParsePersonFile: @"Person.plist"];
    }
    return  _personsMessage;
}
- (NSArray *)getAndParsePersonFile: (NSString *)fileName {
    NSString *filePath = [[NSBundle mainBundle]pathForResource:fileName ofType:nil];
    NSArray *personMessages= [NSArray arrayWithContentsOfFile:filePath];
    NSMutableArray *mut = [NSMutableArray array];
    for (NSDictionary *personDic in personMessages) {
        Person *person = [Person new];
        [person setValuesForKeysWithDictionary:personDic];
        [mut addObject:person];
    }
    return [mut copy];

}
@end
