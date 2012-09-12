//
//  DailyExpense.h
//  DailyExpense
//
//  Created by Apple on 9/10/12.
//  Copyright (c) 2012 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DailyExpense : NSObject {
    NSFileManager *fileMgr;
    NSString *homeDir;
    NSString *fileName;
    NSString *filePath;
}

@property (nonatomic, retain) NSFileManager *fileMgr;
@property (nonatomic, retain) NSString *homeDir;
@property (nonatomic, retain) NSString *fileName;
@property (nonatomic, retain) NSString *filePath;

// ----------- Main method for working with file system
- (NSString *) setFileName; // set file name for save
- (NSString *) getFilePath; // get file path that hav been create 
- (BOOL) saveFile:(NSString *) text; // save data to text file
- (NSArray *) readFile; // read all data from text file and return it to array
- (BOOL) deleteFile;

@end
