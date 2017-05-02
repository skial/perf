package ;

import timeit.Timer;
import psutil.Popen;
import python.lib.Subprocess;

// @see http://stackoverflow.com/a/24105845/3869299

class Perf {

    public static function main() {
        try {
            var perf = new Perf(Sys.args());

        } catch (e:Any) {
            trace( e );

        }
    }

    public function new(args:Array<String>) {
        var infos = [];

        function perf() {
            var process = new Popen(args, {stdout:Subprocess.PIPE});
            infos.push( process.as_dict(['pid', 'name', 'exe', 'cmdline', 'num_threads', 'cpu_times', 'cpu_percent', 'memory_info', 'create_time']) );

        }

        var timer = new Timer(perf);
        var results = timer.repeat(50, 1);
        
        var fastest = minimum(results);
        trace( fastest );
        
        var info = null;
        for (i in 0...results.length) {
            if (results[i] == fastest) {
                info = infos[i];
                break;

            }

        }
        trace( info );
        /*trace( info );
        trace( exitCode, memory );
        trace( memory.rss, memory.vms );*/
    }

    public static inline function minimum(iterator:Iterable<Float>) return python.Syntax.call(untyped min, [iterator]);

}