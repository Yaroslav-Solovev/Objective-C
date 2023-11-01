
#import <Foundation/Foundation.h>
#import "DoctorDelegate.h"
NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject

@property (nonatomic, weak, nullable) id<DoctorDelegate> delegate;
- (void) sayTakePill;

@end

NS_ASSUME_NONNULL_END
