//
//  TableViewController.m
//  TableDemo
//
//  Created by Kevin Gutowski on 8/12/19.
//  Copyright © 2019 Kevin. All rights reserved.
//

#import "TableViewController.h"

@implementation TableViewController

- (NSArray *)numbers {
    if (!_numbers) {
        _numbers = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10"];
    }
    return _numbers;
}

- (NSArray *)letters {
    if (!_letters) {
        _letters = @[@"a", @"b", @"c", @"d", @"e", @"f", @"g", @"h", @"i", @"j"];
    }
    return _letters;
}

// NSTableViewDataSource Protocol Method

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return self.numbers.count;
}


// NSTableViewDelegate Protocol Method

-(NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    NSString *identifier = tableColumn.identifier;
    NSTableCellView *cell = [tableView makeViewWithIdentifier:identifier owner:self];
    
    if ([identifier isEqualToString:@"numbers"]) {
        cell.textField.stringValue = [self.numbers objectAtIndex:row];
    } else {
        cell.textField.stringValue = [self.letters objectAtIndex:row];
    }
    
    return cell;
}

@end
