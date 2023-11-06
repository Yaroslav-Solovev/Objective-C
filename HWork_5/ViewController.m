#import "ViewController.h"
#import "Loader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loader = [Loader new];
    [self performloadingGetRequest];
}

- (void)performloadingGetRequest{
    [self.loader performloadingGetRequest:@"https://postman-echo.com/get" arguments:@{@"ark1":@"wal1", @"ark2":@"wal2"} myblock:^(NSDictionary * dict, NSError * error){
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error){
                NSLog(@"%@", error);
                return;
            }
            NSLog(@"%@", dict);
        });
    }];
}

@end
