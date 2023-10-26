#import <Foundation/Foundation.h>
#import <HWork_2/Figure.m>

@interface Rectangle: Figure{
    double sideA;
    double sideB;
}

- (void) initFindSquare{
    square = sideA * sideB
    return square;
}
- (void) initFindPerimeter{
    perimeter = 2 * (sideA + sideB);
    return perimeter;
}
- (void) printInformationOfFigureХХ{
    NSLog(@"Прямоугольник");
    NSLog(@"Площадь фигуры = " + square);
    NSLog(@"Периметр фигуры = " + perimeter);
}
@end