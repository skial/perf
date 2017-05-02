package psutil;

import python.*;

@:pythonImport('psutil', 'Popen')
extern class Popen extends python.lib.subprocess.Popen implements psutil.Process.IProcess {

    public function new(args:VarArgs<String>, kwargs:KwArgs<{}>):Void;
    public function as_dict(?attrs:Array<String>, ?ad_value:String):Dict<String, Dynamic>;

}