#import <Foundation/Foundation.h>

@interface Figure: NSObject{
    @public double square;
    @public double perimeter;
}
@property (square, perimeter) NSString *value

- (void) initFindSquare; // метод вычисления площади фигуры
- (void) initFindPerimeter; // метод вычисления периметра фигуры
- (void) printInformationOfFigure; // метод вывода информации о фигуре

@end

