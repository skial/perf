package psutil;

import python.*;

@:pythonImport('psutil', 'Process')
extern class Process implements IProcess {

    public function new(?pid:Int):Void;
    public function as_dict(?attrs:Array<String>, ?ad_value:String):Dict<String, Dynamic>;

}

extern interface IProcess {
    public function as_dict(?attrs:Array<String>, ?ad_value:String):Dict<String, Dynamic>;
}