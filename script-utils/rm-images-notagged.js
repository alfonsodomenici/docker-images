#!/usr/bin/jjs -fv

var cmd = "docker rmi $(docker images | grep \"<none>\" | awk \'{print $3}\')";
var System = Java.type("java.lang.System");
$EXEC(cmd, System.in, System.out, System.err);

