package;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end

#if (android && openfl)
import openfl.utils.JNI;
#end


class AnAppLaunch {
	
	
	public static function sampleMethod (inputValue:Int):Int {
		
		#if (android && openfl)
		
		var resultJNI = anapplaunch_sample_method_jni(inputValue);
		var resultNative = anapplaunch_sample_method(inputValue);
		
		if (resultJNI != resultNative) {
			
			throw "Fuzzy math!";
			
		}
		
		return resultNative;
		
		#else
		
		return anapplaunch_sample_method(inputValue);
		
		#end
		
	}
	
	
	private static var anapplaunch_sample_method = Lib.load ("anapplaunch", "anapplaunch_sample_method", 1);
	
	#if (android && openfl)
	private static var anapplaunch_sample_method_jni = JNI.createStaticMethod ("org.haxe.extension.AnAppLaunch", "sampleMethod", "(I)I");
	#end
	
	
}