# Network-Simulator-with-3-nodes

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

1.png represents the traffic flow between nodes 0 and 1 starting at time 1.0 s

And the flow stops at 10 s.
