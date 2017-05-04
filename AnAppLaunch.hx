package;

import lime.system.JNI;
import openfl.events.Event;
import openfl.events.EventDispatcher;


class AnAppLaunch {
	
	#if android
	
	public static function launchAppWithPackageName(packageName:String):Void{
		anapplaunch_jni( packageName );
	}
	private static var anapplaunch_jni = JNI.createStaticMethod ("org.haxe.extension.AnAppLaunch", "launchAppWithPackageName", "(Ljava/lang/String;)V", false);

	#end
}