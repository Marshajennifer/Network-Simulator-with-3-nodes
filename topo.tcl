set ns [new Simulator]

set tracefile [open topo.tr w]
$ns trace-all $tracefile

set namfile [open topo.nam w]
$ns namtrace-all $namfile

set n0 [$ns node]
set n1 [$ns node]
set n2 [$ns node]
set n3 [$ns node]

$ns duplex-link $n0 $n2 2.0Mb 10ms DropTail
$ns duplex-link $n1 $n2 2.0Mb 20ms DropTail
$ns duplex-link $n2 $n3 1.7Mb 20ms DropTail

set udp [new Agent/UDP]
set null [new Agent/Null]
$ns attach-agent $n1 $udp
$ns attach-agent $n3 $null

$ns connect $udp $null


set tcp [new Agent/TCP]
set sink [new Agent/TCPSink]

$ns attach-agent $n0 $tcp
$ns attach-agent $n3 $sink
$ns connect $tcp $sink

set ftp [new Application/FTP]
$ftp attach-agent $tcp

set cbr [new Application/Traffic/CBR]
$cbr attach-agent $udp

$ns at 0.1 "$cbr start"
$ns at 1.0 "$ftp start"

$ns at 4.0 "$ftp stop"
$ns at 4.5 "$cbr stop"


$ns at 10.0 "finish"
proc finish {} {
	global ns tracefile namfile
	$ns flush-trace
	close $tracefile
	close $namfile
	exit 0
}
puts "Simulation is Starting..."
$ns run


