package timeit;

@:pythonImport('timeit', 'Timer')
extern class Timer {

    @:overload(function(method:haxe.Constraints.Function):Void{})
    public function new(stmt:String, setup:String, ?timer:haxe.Constraints.Function, ?globals:Dynamic):Void;
    public function timeit(?value:Int=1000000):Float;
    public function autorange(?callback:Float->Float->Void):Float;
    public function repeat(?repeat:Int=3, ?value:Int=1000000):Array<Float>;

}