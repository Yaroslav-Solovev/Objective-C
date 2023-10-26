#import <Foundation/Foundation.h>
#import <HWork_2/Figure.m>

@interface Triangle: Figure{
    double sideA;
    double sideB;
    double sideC;
}

- (void) initFindSquare{
    poluPerimetr = (sideA + sideB + sideC) / 2;
    square = sqrt (poluPerimetr * (poluPerimetr - sideA) * (poluPerimetr - sideB) * (poluPerimetr - sideC))
    return square;
}
- (void) initFindPerimeter{
    perimeter = sideA + sideB + sideC;
    return perimeter;
}
- (void) printInformationOfFigureХХ{
    NSLog(@"Треугольник");
    NSLog(@"Площадь фигуры = " + square);
    NSLog(@"Периметр фигуры = " + perimeter);
}
@end