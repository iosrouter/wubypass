#import <UIKit/UIKit.h>

%hook JailbreakDetector
+ (bool)isJailbroken {
    return 0;
}
%end

%hook MobileLibrary
- (bool)allowProcessOnJailbrokenDevice {
    return 1;
}
%end

%hook WesternUnionPatchedSwiftClassNameSecurityUtils
+ (bool)isJailBroken {
    return 0;
}
%end

%hook WesternUnionPatchedSwiftClassNameSecurityUtils
- (id)init {
    return NULL;
}
%end

%hook ProgressViewController
- (void)displayJailbrokenDialog {
//do nothing
}
%end

%ctor {
    %init(WesternUnionPatchedSwiftClassNameSecurityUtils = objc_getClass("WesternUnion.SecurityUtils"));

}
