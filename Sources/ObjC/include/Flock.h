#import <Foundation/Foundation.h>
#import "Boid.h"

NS_ASSUME_NONNULL_BEGIN
@interface Flock : NSObject
@property NSSet<Boid*>* boids;
- (instancetype) initWithBoids:(NSSet<Boid*>*) boids;
@end

NS_ASSUME_NONNULL_END
