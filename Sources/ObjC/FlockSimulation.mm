#import <Foundation/Foundation.h>
#import "FlockSimulation.h"
#import "../CPP/src/flockingbird.hpp"

using CFlock = flockingbird :: Flock;
using CBoid = flockingbird :: Boid;
using CFlockingSimulation = flockingbird :: FlockSimulation;
using CParameters = flockingbird :: FlockSimulationParameters;
using CVector = Vector3D;

@interface FlockSimulation ()
@property CFlockingSimulation *cFlockingSimulation;
@property CFlock* cFlock;
- (CFlock*) convertToCFlock:(Flock*) flock;
- (CParameters) convertToCParameters:(FlockSimulationParameters*) parameters;
@end

@implementation FlockSimulation

- (instancetype) initWithFlock:(Flock*) flock
          simulationParameters:(FlockSimulationParameters*) parameters {
    self = [super init];
    CParameters configurationParameters = [self convertToCParameters:parameters];
    self.cFlock = [self convertToCFlock:flock];
    self.cFlockingSimulation = new CFlockingSimulation(configurationParameters, *self.cFlock, defaultRules);
    return self;
}

- (Flock*) currentFlock {
    NSMutableArray<Boid*> *boids = [[NSMutableArray alloc] init];
    for (CBoid cBoid: self.cFlockingSimulation->flock.boids) {
        Boid *boid = [[Boid alloc]
                      initWithPosition:
                      [[Vector alloc]
                       initWithX:cBoid.position.x y:cBoid.position.y z:cBoid.position.z]
                      velocity:
                      [[Vector alloc]
                       initWithX:cBoid.velocity.x y:cBoid.velocity.y z:cBoid.position.z]];
        [boids addObject:boid];
    }
    return [[Flock alloc] initWithBoids: boids];
};
/*
 FlockSimulationParameters(float                   speedLimit,
                           float                   forceLimit,
                           float                   positionIncrementScalingFactor,
                           float                   avoidanceRadius,
                           float                   visionRange,
                           float                   separationWeight,
                           float                   alignmentWeight,
                           float                   cohesionWeight,
                           float                   avoidanceWeight,
                           float                   dirWeight,
                           bool                    twoDimensions,
                           float                   maxX,
                           float                   maxY,
                           float                   maxZ,
                           std::optional<Vector3D> TargetPos)
 */
- (CParameters) convertToCParameters:(FlockSimulationParameters *) parameters {
    return CParameters(
                       parameters.speedLimit,
                       parameters.forceLimit,
                       parameters.positionIncrementScalingFactor,
                       parameters.avoidanceRadius,
                       parameters.visionRange,
                       parameters.separationWeight,
                       parameters.alignmentWeight,
                       parameters.cohesionWeight,
                       parameters.avoidanceWeight,
                       parameters.directionWeight,
                       parameters.isTwoD,
                       parameters.maxX,
                       parameters.maxY,
                       parameters.maxZ,
                       Vector3D(
                                parameters.targetPosition.x,
                                parameters.targetPosition.y,
                                parameters.targetPosition.z
                                )
                       );
}

- (CFlock*) convertToCFlock:(Flock*) flock {
    CFlock* cFlock = new CFlock();
    for (Boid *boid in flock.boids) {
        CVector position = CVector(boid.position.x, boid.position.y, boid.position.z);
        CVector velocity = CVector(boid.velocity.x, boid.velocity.y, boid.position.z);
        CBoid cBoid = CBoid(position, velocity);
        cFlock->boids.push_back(cBoid);
    }
    return cFlock;
}

- (void) step {
    self.cFlockingSimulation->step();
}

@end
