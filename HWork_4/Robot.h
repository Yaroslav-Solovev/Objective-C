
#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN

void (^movementUp)(void) = ^{
   NSLog(@"Up");
};

void (^movementDown)(void) = ^{
   NSLog(@"Down");
};

void (^movementLeft)(void) = ^{
   NSLog(@"Left");
};

void (^movementRight)(void) = ^{
   NSLog(@"Right");
};

@interface Robot : NSObject{
    @public int coordinateX;
    @public int coordinateY;
}

@property (coordinateX, coordinateY) NSString *value
// методы, инициирующие движение робота
- (void) initRunUp;
- (void) initRunDown;
- (void) initRunLeft;
- (void) initRunRight;
// метод вывода информации о местонахождении робота
- (void) printInformationOfLocation; 
@end

NS_ASSUME_NONNULL_END
