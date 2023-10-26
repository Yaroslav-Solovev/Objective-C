#import <Foundation/Foundation.h>
#import <HWork_2/Figure.m>

@interface Circle: Figure{
    double radius;
}

- (void) initFindSquare{
    square = 3.14 * radius * radius;
    return square;
}
- (void) initFindPerimeter{
    perimeter = 2 * 3.14 * radius;
    return perimeter;
}
- (void) printInformationOfFigureХХ{
    NSLog(@"Круг");
    NSLog(@"Площадь фигуры = " + square);
    NSLog(@"Периметр фигуры = " + perimeter);
}
@end