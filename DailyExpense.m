//
//  DailyExpense.m
//  DailyExpense
//
//  Created by Apple on 9/10/12.
//  Copyright (c) 2012 Apple. All rights reserved.
//

#import "DailyExpense.h"

@implementation DailyExpense

@synthesize fileMgr;
@synthesize homeDir;
@synthesize fileName;
@synthesize filePath;

- (NSString *) setFileName {
    self.fileName = @"/expense.txt";
    return self.fileName;
}

- (NSString *) getFilePath {
    fileMgr = [NSFileManager defaultManager];
    homeDir = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
    filePath = [homeDir stringByAppendingString:self.setFileName];
    if ([fileMgr fileExistsAtPath:filePath] == NO) {
        [fileMgr createFileAtPath:filePath contents:nil attributes:nil];
    }
    return filePath;
}

- (BOOL) saveFile:(NSString *)text {
    NSFileHandle *file;
    NSData *data;
    
    @try {
        data = [text dataUsingEncoding:NSUnicodeStringEncoding];
        [self getFilePath];
        
        
        file = [NSFileHandle fileHandleForUpdatingAtPath:self.filePath];
        if (file == nil) {
            return false;
        }
        
        [file seekToEndOfFile];
        [file writeData:data];
        
        [file closeFile];
        
    }
    @catch (id theException) {
		NSLog(@"%@", theException);
	}
    
    return true;
}

-(NSArray *) readFile {
    NSString *data = [NSString stringWithContentsOfFile:self.getFilePath encoding:NSUnicodeStringEncoding error:nil];
    NSArray *allLines = [data componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    return allLines;
}

- (BOOL) deleteFile {
    [self getFilePath];
    if ([fileMgr fileExistsAtPath:self.filePath] == YES) {
        BOOL ok = [fileMgr removeItemAtPath:self.filePath error:nil];
        if (!ok) {
            return false;
        }
    }
    return  true;
}

@end
