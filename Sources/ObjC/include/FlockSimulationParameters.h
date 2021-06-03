#ifndef FlockSimulationParameters_h
#define FlockSimulationParameters_h

@interface FlockSimulationParameters : NSObject
@property (nonatomic) double speedLimit;
@property (nonatomic) double forceLimit;
@property (nonatomic) double positionIncrementScalingFactor;
@property (nonatomic) double avoidanceRadius;
@property (nonatomic) double visionRange;
@property (nonatomic) double separationWeight;
@property (nonatomic) double alignmentWeight;
@property (nonatomic) double cohesionWeight;
@property (nonatomic) double maxX;
@property (nonatomic) double maxY;

- (nonnull instancetype) initWithSpeedLimit:(double) speedLimit
                         forceLimit:(double) forceLimit
     positionIncrementScalingFactor:(double) positionIncrementScalingFactor
                    avoidanceRadius:(double) avoidanceRadius
                        visionRange:(double) visionRange
                   separationWeight:(double) separationWeight
                    alignmentWeight:(double) alignmentWeight
                     cohesionWeight:(double) cohesionWeight
                               maxX:(double) maxX
                               maxY:(double) maxY;
- (nonnull instancetype) init;
- (nonnull instancetype) initFromDict:(nonnull NSDictionary*) dict;
@end

#endif /* FlockSimulationParameters_h */
