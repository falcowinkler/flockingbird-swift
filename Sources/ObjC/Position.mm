#import "Position.h"

@implementation Position
- (instancetype) initWithX: (double) x y:(double) y {
    self = [super init];
    self.x = x;
    self.y = y;
    return self;
}
@end
