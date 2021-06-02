#import <Foundation/Foundation.h>
#import "FlockSimulationParameters.h"
@implementation FlockSimulationParameters
- (instancetype) initWithSpeedLimit:(double) speedLimit
                         forceLimit:(double) forceLimit
     positionIncrementScalingFactor:(double) positionIncrementScalingFactor
                    avoidanceRadius:(double) avoidanceRadius
                        visionRange:(double) visionRange
                   separationWeight:(double) separationWeight
                    alignmentWeight:(double) alignmentWeight
                     cohesionWeight:(double) cohesionWeight
                               maxX:(double) maxX
                               maxY:(double) maxY {
    self = [super init];
    self.speedLimit = speedLimit;
    self.forceLimit = forceLimit;
    self.positionIncrementScalingFactor = positionIncrementScalingFactor;
    self.avoidanceRadius = avoidanceRadius;
    self.visionRange = visionRange;
    self.separationWeight = separationWeight;
    self.alignmentWeight = alignmentWeight;
    self.cohesionWeight = cohesionWeight;
    self.maxX = maxX;
    self.maxY = maxY;
    return self;
}

- (instancetype) init {
    self = [super init];
    self.speedLimit = 5;
    self.forceLimit = 0.03;
    self.positionIncrementScalingFactor = 1;
    self.avoidanceRadius = 25;
    self.visionRange = 100;
    self.separationWeight = 1.5;
    self.alignmentWeight = 1.0;
    self.cohesionWeight = 1.0;
    // No wrap around
    self.maxX = -1;
    self.maxY = -1;
    return self;
}

- (instancetype) initFromDict:(NSDictionary *)dict {
    self = [super init];
    NSNumber* speedLimit = dict[@"speedLimit"];
    if (!speedLimit) {
        speedLimit = [[NSNumber alloc] initWithDouble: 5];
    }
    self.speedLimit = [speedLimit doubleValue];

    NSNumber* forceLimit = dict[@"forceLimit"];
    if (!forceLimit) {
        forceLimit = [[NSNumber alloc] initWithDouble: 0.03];
    }
    self.forceLimit = [forceLimit doubleValue];

    NSNumber* positionIncrementScalingFactor = dict[@"positionIncrementScalingFactor"];
    if (!positionIncrementScalingFactor) {
        positionIncrementScalingFactor = [[NSNumber alloc] initWithDouble: 1];
    }
    self.positionIncrementScalingFactor = [positionIncrementScalingFactor doubleValue];

    NSNumber* avoidanceRadius = dict[@"avoidanceRadius"];
    if (!avoidanceRadius) {
        avoidanceRadius = [[NSNumber alloc] initWithDouble: 25];
    }
    self.avoidanceRadius = [avoidanceRadius doubleValue];

    NSNumber* visionRange = dict[@"visionRange"];
    if (!visionRange) {
        visionRange = [[NSNumber alloc] initWithDouble: 100];
    }
    self.visionRange = [visionRange doubleValue];

    NSNumber* separationWeight = dict[@"separationWeight"];
    if (!separationWeight) {
        separationWeight = [[NSNumber alloc] initWithDouble: 1.5];
    }
    self.separationWeight = [separationWeight doubleValue];

    NSNumber* alignmentWeight = dict[@"alignmentWeight"];
    if (!alignmentWeight) {
        alignmentWeight = [[NSNumber alloc] initWithDouble: 1];
    }
    self.alignmentWeight = [alignmentWeight doubleValue];

    NSNumber* cohesionWeight = dict[@"cohesionWeight"];
    if (!cohesionWeight) {
        cohesionWeight = [[NSNumber alloc] initWithDouble: 1];
    }
    self.cohesionWeight = [cohesionWeight doubleValue];

    NSNumber* maxX = dict[@"maxX"];
    if (!maxX) {
        maxX = [[NSNumber alloc] initWithDouble: -1];
    }
    self.maxX = [maxX doubleValue];

    NSNumber* maxY = dict[@"maxY"];
    if (!maxY) {
        maxY = [[NSNumber alloc] initWithDouble: -1];
    }
    self.maxY = [maxY doubleValue];
    return self;
}

@end
