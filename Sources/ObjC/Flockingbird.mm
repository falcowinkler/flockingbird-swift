#import <Foundation/Foundation.h>
#import "Flockingbird.h"
#import "../../CPP/src/flockingbird.h"

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

    NSMutableSet<Boid*> *flockSet = [[NSMutableSet alloc] init];
    for (int i = 0; i < _cflock.boids.size(); i++) {
        FlockSimulation::Boid boid = _cflock.boids[i];
        [flockSet addObject:
         [[Boid alloc]
          initWithPosition:
          [[Position alloc]
           initWithX:boid.position.x y:boid.position.y] bearing:boid.bearing]];
    }
    return [[Flock alloc] initWithBoids:flockSet];
};
- (void) step {
    // advance the simulation by one timestep
}
@end
