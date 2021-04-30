# Network-Simulator-with-3-nodes
This network consists of 4 nodes (n0, n1, n2, n3) as shown in figure 1.png. The duplex links between n0 and n2, and n1 and n2 have 2 Mbps of bandwidth and 10 ms of delay. The duplex link between n2 and n3 has 1.7 Mbps of bandwidth and 20 ms of delay. Each node uses a DropTail queue, of which the maximum size is 10. A "tcp" agent is attached to n0, and a connection is established to a tcp "sink" agent attached to n3. As default, the maximum size of a packet that a "tcp" agent can generate is 1KByte. A tcp "sink" agent generates and sends ACK packets to the sender (tcp agent) and frees the received packets. A "udp" agent that is attached to n1 is connected to a "null" agent attached to n3. A "null" agent just frees the packets received. A "ftp" and a "cbr" traffic generator are attached to "tcp" and "udp" agents respectively, and the "cbr" is configured to generate 1 KByte packets at the rate of 1 Mbps. The "cbr" is set to start at 0.1 sec and stop at 4.5 sec, and "ftp" is set to start at 1.0 sec and stop at 4.0 sec.

Image of the network that we want to design is given with filename ab.png

Steps: Install NS2

Open terminal and type gedit filename.tcl

Now a filename.tcl file is opened in gedit

Type the code that I have attached here(topo.tcl) {All the steps are mentioned clearly in the Code}

After that Save the file and close it.

Now in Terminal you can run it . For that type:

ns filename.tcl {in my case ns topo.tcl}

Now after successfully running above command 2 new files are created at the same location where filename.tcl{in my case ns topo.tcl} is resided.

Those 2 files will have the filenames filename.nam and filename.tr {in my case topo.nam and topo.tr}

//Remember that commands for creating these 2 files are given in the code with name.

Now to view the network topology you can run the newly automatically created nam file.

For that in terminal type:

nam filename.nam{in my case nam topo.nam}

Now we can see the network formed and by clicking on the play button we can see the traffic.

Here I have attached image of traffic flow 1.png.

cbr0.1to4.5.png represents the traffic flow between nodes 1 and 3 starting at time 0.1 s and stoping at 4.5.

ftp1.0to4.0.png represents the traffic flow between nodes 0 and 3 starting at time 1.0 s and stoping at 4.0.

And the flow stops at 10 s.
