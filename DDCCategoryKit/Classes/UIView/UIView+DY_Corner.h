
#import <UIKit/UIKit.h>

@interface UIView (DY_Corner)


/// 设置圆角
/// @param radius 当为0时 隐藏全部圆角
/// @param corner <#corner description#>
- (void)dy_setCornerWithRadius:(CGFloat)radius corner:(UIRectCorner)corner;

/// 隐藏全部圆角
- (void)dy_setNoneCorner;

@end
