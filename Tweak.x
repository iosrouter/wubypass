%hook JailbreakDetector

+(bool)isJailbroken {
return 0;
}
%end


//%hook WesternUnionPatchedSwiftClassNameSecurityUtils
//+ (bool)isJailBroken {
//	return 0;
//}
//%end





//%ctor {
	//%init(WesternUnionPatchedSwiftClassNameSecurityUtils = objc_getClass("WesternUnion.SecurityUtils"));
//
//}
//