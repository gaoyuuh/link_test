//
//  ViewController.m
//  testFramework
//
//  Created by gaoyu on 2024/8/1.
//

#import "ViewController.h"
//#import <FMDB/FMDB.h>
//#import "FMDB.h"
//#import <KZAPM/KZAMP.h>
#import "Static1.h"
#import <Shared/SharedTest.h>

#import <sqlite3.h>

int sqlite3_key(void *db, const char *, int);

void test1(void) {
    return;
}

static void test2_static(void) {
    
}

@interface ViewController () {
    void*               _db;
}

//@property (nonatomic, strong) FMDatabaseQueue *dbQueue;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    static1_method();
    
    hello();
        
    NSString *docsPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSString *dbPath = [docsPath stringByAppendingPathComponent:@"mydatabase.sqlite"];
    NSLog(@"%@", dbPath);
    
    sqlite3_open([dbPath fileSystemRepresentation], (sqlite3**)&_db );
    int key = sqlite3_key(_db, "abcedfg", 7);
    if (key == SQLITE_OK) {
        NSLog(@"success");
    } else {
        NSLog(@"error opening!: %d", key);
    }
    
//    self.dbQueue = [FMDatabaseQueue databaseQueueWithPath:dbPath];
//    [self.dbQueue inDatabase:^(FMDatabase * _Nonnull db) {
//        BOOL success = [db setKey:@"abcdefg"];
//        if (!success) {
//            NSLog(@"setKey: %@", [db lastError]);
//        }
//        
//        // 检查person表是否存在的SQL语句
//        NSString *checkTableExistsSQL = @"SELECT name FROM sqlite_master WHERE type='table' AND name='person'";
//        FMResultSet *resultSet = [db executeQuery:checkTableExistsSQL];
//        if ([resultSet next]) {
//            // 如果表存在，读取数据
//            NSString *querySQL = @"SELECT * FROM person";
//            FMResultSet *results = [db executeQuery:querySQL];
//            while ([results next]) {
//                int personID = [results intForColumn:@"id"];
//                NSString *name = [results stringForColumn:@"name"];
//                int age = [results intForColumn:@"age"];
//                NSString *sex = [results stringForColumn:@"sex"];
//                NSLog(@"ID: %d, Name: %@, Age: %d, Sex: %@", personID, name, age, sex);
//            }
//        } else {
//            // 创建person表的SQL语句
//            NSString *createTableSQL = @"CREATE TABLE IF NOT EXISTS person ("
//                                        "id INTEGER PRIMARY KEY AUTOINCREMENT, "
//                                        "name TEXT, "
//                                        "age INTEGER, "
//                                        "sex TEXT)";
//            // 执行创建表的SQL语句
//            if ([db executeUpdate:createTableSQL]) {
//                NSLog(@"Table created successfully");
//            } else {
//                NSLog(@"Failed to create table: %@", [db lastErrorMessage]);
//            }
//            
//            NSString *insertSQL = @"INSERT INTO person (name, age, sex) VALUES (?, ?, ?)";
//                
//            if ([db executeUpdate:insertSQL, @"John Doe", @30, @"Male"]) {
//                NSLog(@"Data inserted successfully");
//            } else {
//                NSLog(@"Failed to insert data: %@", [db lastErrorMessage]);
//            }
//        }
//    }];
}


@end
