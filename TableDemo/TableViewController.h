//
//  TableViewController.h
//  TableDemo
//
//  Created by Kevin Gutowski on 8/12/19.
//  Copyright © 2019 Kevin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewController : NSObject <NSTableViewDataSource, NSTableViewDelegate>

@property (nonatomic, strong) NSArray *numbers;
@property (nonatomic, strong) NSArray *letters;

@end

NS_ASSUME_NONNULL_END
