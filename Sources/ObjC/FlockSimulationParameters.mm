#import <Foundation/Foundation.h>
#import "FlockSimulationParameters.h"
@implementation FlockSimulationParameters
- (instancetype) initWithSpeedLimit:(float) speedLimit
                         forceLimit:(float) forceLimit
     positionIncrementScalingFactor:(float) positionIncrementScalingFactor
                    avoidanceRadius:(float) avoidanceRadius
                        visionRange:(float) visionRange
                   separationWeight:(float) separationWeight
                    alignmentWeight:(float) alignmentWeight
                     cohesionWeight:(float) cohesionWeight
                               maxX:(float) maxX
                               maxY:(float) maxY {
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
        speedLimit = [[NSNumber alloc] initWithFloat: 5];
    }
    self.speedLimit = [speedLimit floatValue];

    NSNumber* forceLimit = dict[@"forceLimit"];
    if (!forceLimit) {
        forceLimit = [[NSNumber alloc] initWithFloat: 0.03];
    }
    self.forceLimit = [forceLimit floatValue];

    NSNumber* positionIncrementScalingFactor = dict[@"positionIncrementScalingFactor"];
    if (!positionIncrementScalingFactor) {
        positionIncrementScalingFactor = [[NSNumber alloc] initWithFloat: 1];
    }
    self.positionIncrementScalingFactor = [positionIncrementScalingFactor floatValue];

    NSNumber* avoidanceRadius = dict[@"avoidanceRadius"];
    if (!avoidanceRadius) {
        avoidanceRadius = [[NSNumber alloc] initWithFloat: 25];
    }
    self.avoidanceRadius = [avoidanceRadius floatValue];

    NSNumber* visionRange = dict[@"visionRange"];
    if (!visionRange) {
        visionRange = [[NSNumber alloc] initWithFloat: 100];
    }
    self.visionRange = [visionRange floatValue];

    NSNumber* separationWeight = dict[@"separationWeight"];
    if (!separationWeight) {
        separationWeight = [[NSNumber alloc] initWithFloat: 1.5];
    }
    self.separationWeight = [separationWeight floatValue];

    NSNumber* alignmentWeight = dict[@"alignmentWeight"];
    if (!alignmentWeight) {
        alignmentWeight = [[NSNumber alloc] initWithFloat: 1];
    }
    self.alignmentWeight = [alignmentWeight floatValue];

    NSNumber* cohesionWeight = dict[@"cohesionWeight"];
    if (!cohesionWeight) {
        cohesionWeight = [[NSNumber alloc] initWithFloat: 1];
    }
    self.cohesionWeight = [cohesionWeight floatValue];

    NSNumber* maxX = dict[@"maxX"];
    if (!maxX) {
        maxX = [[NSNumber alloc] initWithFloat: -1];
    }
    self.maxX = [maxX floatValue];

    NSNumber* maxY = dict[@"maxY"];
    if (!maxY) {
        maxY = [[NSNumber alloc] initWithFloat: -1];
    }
    self.maxY = [maxY floatValue];
    return self;
}

@end
