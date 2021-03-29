#import "Boid.h"
#import "Position.h"

@implementation Boid
- (instancetype)initWithPosition:(Position*) position bearing:(double)bearing {
    self = [super init];
    self.position = position;
    self.bearing = bearing;
    return self;
}
@end
