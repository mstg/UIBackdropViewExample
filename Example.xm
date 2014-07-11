#include "UIBackdropView.h"

@interface CreateView : NSObject
  - (void)create;
@end

@implementation CreateView
  - (void)create {
    CGFloat *deviceWidth = [UIScreen mainScreen].bounds.size.width;
    CGRect smallFrame = CGRectMake(0, 0, deviceWidth, 20);

    UIWindow *smallView = [[UIWindow alloc] initWithFrame:smallFrame];
    smallView.backgroundColor = [UIColor blackColor];
    smallView.windowLevel = UIWindowLevelAlert;

    _UIBackdropView *blurView = [[_UIBackdropView alloc] initWithStyle:2060];
    [blurView setBlurRadiusSetOnce:NO];
    [blurView setBlurRadius:4.0];
    [blurView setBlurHardEdges:2];
    [blurView setBlursWithHardEdges:YES];
    [blurView setBlurQuality:@"default"];
    [smallView addSubview:blurView];
  }
@end
