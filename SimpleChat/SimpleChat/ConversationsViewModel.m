//
//  ConversationsViewModel.m
//  SimpleChat
//
//  Created by Dariusz Pacześniak on 04/06/16.
//  Copyright © 2016 DP. All rights reserved.
//

#import "ConversationsViewModel.h"

@interface ConversationsViewModel ()
@property (nonatomic, strong) NSMutableDictionary *conversationsData;
@end

@implementation ConversationsViewModel

- (NSArray *)conversations {
    return self.conversationsData.allKeys;
}

- (id)init {
    self = [super init];
    if (self) {
        NSString *myPlistFilePath = [[NSBundle mainBundle] pathForResource: @"cities" ofType: @"plist"];
        _conversationsData = [NSDictionary dictionaryWithContentsOfFile: myPlistFilePath].mutableCopy;
    }
    return self;
}
@end
