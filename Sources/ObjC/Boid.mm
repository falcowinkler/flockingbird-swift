#import "Boid.h"
#import "Vector.h"

@implementation Boid
- (instancetype)initWithPosition:(Vector*) position velocity:(Vector*)velocity {
    self = [super init];
    self.position = position;
    self.velocity = velocity;
    return self;
}
@end
