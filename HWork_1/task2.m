#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 12;
        int b = 32;
        int c = 5;
        int max = a;
        if (b > a){
            max = b;
        }
        if (c > max){
            max = c;
        }
        printf("Максимальное число = ", max);
    }
    return 0;
}