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
    self = [super init];
    self.boids = [[NSArray alloc] init];
    return self;
}

- (instancetype) initWithNumberOfBoids:(int) numberOfBoids maxX:(int) maxX maxY:(int) maxY maxZ:(int) maxZ {
    self = [super init];
    CFlock cFlock = CFlock(numberOfBoids, maxX, maxY, maxZ);
    NSMutableArray<Boid*> *boids = [[NSMutableArray alloc] init];
    for (CBoid cBoid: cFlock.boids) {
        Boid *boid = [[Boid alloc]
                     initWithPosition:
                      [[Vector alloc]
                       initWithX:cBoid.position.x y:cBoid.position.y z:cBoid.position.z]
                      velocity:
                      [[Vector alloc]
                       initWithX:cBoid.velocity.x y:cBoid.velocity.y z:cBoid.position.z]];
        [boids addObject:boid];
    }
    self.boids = boids;
    return self;
}

- (instancetype) initWithBoids:(NSArray<Boid*>*) boids {
    self = [super init];
    self.boids = boids;
    return self;
}
@end
