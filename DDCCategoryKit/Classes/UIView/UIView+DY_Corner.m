
#import "UIView+DY_Corner.h"

@implementation UIView (DY_Corner)

- (void)dy_setCornerWithRadius:(CGFloat)radius corner:(UIRectCorner)corner {
    if (radius == 0) {
        [self dy_setNoneCorner];
        return;
    }
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                                   byRoundingCorners:corner
                                                         cornerRadii:CGSizeMake(radius, radius)];

    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

- (void)dy_setNoneCorner {
    self.layer.mask = nil;
}

@end

