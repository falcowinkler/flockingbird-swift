#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Vector : NSObject
@property (nonatomic) float x;
@property (nonatomic) float y;
- (instancetype) initWithX: (float) x y:(float) y;
@end

NS_ASSUME_NONNULL_END
