#import <Foundation/Foundation.h>
#import "Vector.h"

NS_ASSUME_NONNULL_BEGIN

@interface Boid : NSObject
@property (nonatomic, nonnull, strong) Vector *position;
@property (nonatomic, nonnull, strong) Vector *velocity;
- (instancetype) initWithPosition:(nonnull Vector*) position velocity:(nonnull Vector*) velocity;
@end

NS_ASSUME_NONNULL_END
