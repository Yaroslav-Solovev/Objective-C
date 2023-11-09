#import <UIKit/UIKit.h>
#import "Robot.h"

@implementation Robot{
    int coordinateX;
    int coordinateY;
    NSString *name;
}

- (void) viewDidLoad{
    [super viewDidLoad];
    self.userDefaults = [NSUserDefaults standardUserDefaults];
    [self.userDefaults setObject:@"myName" forKey:@"strKey"];
    [self.userDefaults setInteger:0 forKey:@"intKeyX"];
    [self.userDefaults setInteger:0 forKey:@"intKeyY"];
    UIColor * myColor = UIColor.redColor;
    CGPoint myPoint = CGPointMake(5, 20);
    ColorTitle * myTitle = [[ColorTitle alloc] initWithTileOrigin:myPoint andColor:myColor];
    NSDate myDate = [NSKeyedArchiver archivedDataWithRootObject:myTile];
    [self.userDefaults setObject:myData forKey:@"dataKey"];
}

- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSString *name = [self.userDefaults stringForKey:@"strKey"];
    NSInteger coordinateX = [self.userDefaults integerForKey:@"intKeyX"];
    NSInteger coordinateY = [self.userDefaults integerForKey:@"intKeyY"];
    NSLog(@"My name %@ CoordinateX %@li Double %@f Float %@f", name, (long)number, coordinateX, coordinateY);
    // [self resetDefaults];
    NSData * data = [self.userDefaults objectForKey:@"dataKey"];
    ColorTile *resultData =  [NSKeyedArchiver unarchiveObjectWithData:data];
    NSLog(@"X %f", resultData.tileOrigin.x);
    NSLog(@"Y %f", resultData.tileOrigin.y);
}

- (void) resetDefaults {
    NSDictionary * dict = [self.userDefaults dictionaryRepresentation];
    for (id key in dict){
        [self.userDefaults removeObjectForKey:key];
    }
    [self.userDefaults synchronize];
}

- (instancetype) initWithTileOrigin:(CGPoint)point andColor:(UIColor*)color{
    self = [super init];
    if (self){
        self.tileOrigin = point;
        self.tileColor = color;
    }
    return self;
}

- (void) encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.tileColor forKey:@"color"];
    [coder encodeFloat:self.x forKey:@"pointX"];
    [coder encodeFloat:self.y forKey:@"pointY"];
}

- (instancetype) initWithCoder:(NSCoder *)coder{
    self = [super init];
    if (self){
        self.tileColor = [coder decodeObjectForKey:@"color"];
        float x = [coder decodeFloatForKey:@"pointX"];
        float y = [coder decodeFloatForKey:@"pointY"];
        self.titleOrigin = CGPointMake(x, y);
    }
    return self;
}

@end
