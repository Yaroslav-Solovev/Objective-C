#import "Doctor.h"

@implementation Doctor

- (void)sayTakePill {
    NSLog(@"Doctor asks to take a pill");
    [self.delegate takePill];
}

@end
