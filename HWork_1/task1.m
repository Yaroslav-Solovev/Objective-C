#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
          double a, b, d, x1, x2, x3, x4;
          d = a * a - 8 * b + 12; // x^2 – 8x + 12 = 0,
          //d = 12 * a * a - 4 * b + 2; // 12x^2 – 4x + 2 = 0,
          //d = a * a - 100 * b - 2; // x^2 – 100x - 2 = 0
          if (d > 0){
               x1 = ((-b) + sqrt(d)) / (2 * a);
               x2 = ((-b) - sqrt(d)) / (2 * a);
               printf("x1 = ", x1);
               printf("x2 = ", x2);
          }
          if (d == 0){
               x3 = (-b / (2 * a));
               printf("x3 = ", x3);
          }
          if (d < 0){
               x4 = (-b / (2 * a));
               printf("Корней уравнения не существует");
          }
     }
    return 0;
}