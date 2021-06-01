#import <Foundation/Foundation.h>
#import "Flockingbird.h"
#import "../../CPP/src/flockingbird.h"

@interface Flockingbird ()


@end

@implementation Flockingbird

- (instancetype) initWithNumberOfBoids:(int) numberOfBoids {
    self = [super init];
    return self;
}

- (Flock*) currentFlock {
};
- (void) step {
    // advance the simulation by one timestep
}
@end
