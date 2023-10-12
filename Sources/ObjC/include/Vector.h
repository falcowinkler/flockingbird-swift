#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Vector : NSObject
@property (nonatomic) float x;
@property (nonatomic) float y;
@property (nonatomic) float z;
- (instancetype) initWithX: (float) x y:(float) y z:(float) z;
@end

NS_ASSUME_NONNULL_END
