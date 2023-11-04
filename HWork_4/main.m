#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int coordinateX = 0;
        int coordinateY = 0;
        NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
        int distance;
        NSLog (@"Ведите дистанцию, на которую робот делает шаг:");
        initRunUp();
        printInformationOfLocation();
        initRunLeft();
        printInformationOfLocation();
        initRunDown();
        printInformationOfLocation();
        initRunRight();
        printInformationOfLocation();
    }
    return 0;
}
