#import <Foundation/Foundation.h>
#import "Boid.h"

@interface Flock : NSObject
@property (nonatomic, nonnull, strong) NSArray<Boid*>* boids;
- (nonnull instancetype) initWithNumberOfBoids:(int) numberOfBoids maxX:(int) maxX maxY:(int) maxY;
- (nonnull instancetype) initWithBoids:(nonnull NSArray<Boid*>*) boids;
- (nonnull instancetype) init;
@end
