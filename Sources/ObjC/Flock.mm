#import <Foundation/Foundation.h>
#import "FlockSimulation.h"
#import "Flock.h"
#import "Boid.h"
#import "../CPP/src/flockingbird.hpp"

using CFlock = flockingbird :: Flock;
using CBoid = flockingbird :: Boid;

@interface Flock ()
@end

@implementation Flock

- (instancetype) init {
    self.boids = [[NSSet alloc] init];
}

- (instancetype) initWithNumberOfBoids:(int) numberOfBoids maxX:(int) maxX maxY:(int) maxY {
    self = [super init];
    CFlock cFlock = CFlock(numberOfBoids, maxX, maxY);
    NSMutableSet<Boid*> *boids = [[NSMutableSet alloc] init];
    for (CBoid cBoid: cFlock.boids) {
        Boid *boid = [[Boid alloc]
                     initWithPosition:
                      [[Vector alloc]
                       initWithX:cBoid.position.x y:cBoid.position.y]
                      velocity:
                      [[Vector alloc]
                       initWithX:cBoid.velocity.x y:cBoid.velocity.y]];
        [boids addObject:boid];
    }
    self.boids = boids;
    return self;
}

- (instancetype) initWithBoids:(NSSet<Boid*>*) boids {
    self = [super init];
    self.boids = boids;
    return self;
}
@end
