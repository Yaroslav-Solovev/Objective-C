#import <UIKit/UIKit.h>
#import "Loader.h"

@interface ViewController : UIViewController

@property(weak, nonatomic) IBOutlet UITextView *textView;
@property(nonatomic) Loader* loader;

@end