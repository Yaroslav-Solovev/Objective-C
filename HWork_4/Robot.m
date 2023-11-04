#import "Robot.h"

@implementation Robot{
    int coordinateX;
    int coordinateY;
    int distance;
}

- (void) initRunUp{
    coordinateY = coordinateY + distance;
    return movementUp();
}

- (void) initRunDown{
    coordinateY = coordinateY - distance;  
    return movementDown();
}

- (void) initRunLeft{
    coordinateX = coordinateX - distance;
    return movementLeft();
}

- (void) initRunRight{
    coordinateX = coordinateX + distance;
    return movementRight();
}

- (void) printInformationOfLocation{
    NSLog(@"Робот находится по следующим координатам: " + "x: " + coordinateX + "y: " + coordinateY);
}

@end
