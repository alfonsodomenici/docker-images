#!/usr/bin/jjs -fv
var cmd = "docker build -t alfonsodomenici/payara-monitored ."
var System = Java.type("java.lang.System");
$EXEC(cmd, System.in, System.out, System.err);
