
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface Robot : NSObject <NSCoding> {
   @public int coordinateX;
   @public int coordinateY;
   @public NSString *name;
}

@property (nonatomic, strong) NSUserDefaults * userDefaults;
@property (nonatomic) CGPoint titleOrigin;
@property (nonatomic) UIColor* titleColor;

- (void) viewDidLoad;
- (void) viewWillAppear;
- (void) resetDefaults;
- (instancetype) initWithTileOrigin:(CGPoint)point andColor:(UIColor*)color;

@end

NS_ASSUME_NONNULL_END
