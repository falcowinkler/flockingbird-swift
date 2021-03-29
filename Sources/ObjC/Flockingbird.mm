#import <Foundation/Foundation.h>
#import "Flockingbird.h"
#import "../CPP/src/flockingbird.h"

using CFlock = FlockSimulation :: Flock;

@interface Flockingbird ()

@property (readonly) CFlock cflock;

@end

@implementation Flockingbird

- (id) initWithNumberOfBoids:(int) numberOfBoids {
    self = [super init];
    _cflock = CFlock(numberOfBoids);
    return self;
}

- (Flock*) currentFlock {
    return [[Flock alloc] init];
};
- (void) step {
    // advance the simulation by one timestep
}
@end
