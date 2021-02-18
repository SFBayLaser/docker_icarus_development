<!-- It seems that github simply ignores the "style" tags within div tags... so try something different -->
<p align=center>
<a href="http://icarus.lngs.infn.it"><img src="http://icarus.lngs.infn.it/img/n3.jpg" alt="ICARUS Experiment" style="border:0"></a>
</p>

<h1 align=center><font color="blue"><font size="7">ICARUS Code Development</font></font></h1><br>
<p align=center>
<font color="gray"><font size="3">A Docker image for doing code development for the ICARUS experiment</font></font><br>
</p>


<h2><font color="blue"><font size="5">Launching the Image</font></font></h2>
<ul>
    <li>docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro -v /cvmfs:/cvmfs:shared -v $PWD:/data:shared -u docker --name="rdev" sfbaylaser/icarus-development:latest</li>
</ul>

<h2><font color="blue"><font size="5">Notes:</font>font></font></font></h2>
<ul>
	<li>The sl7-essentials image included in icarus-development will include "xclock" which can be used to check your docker X11 setup. If you are having problems opening windows with larsoft or root, then try xclock to check if open. </li>
	<ul>
		<li>For my set up (ubuntu 20.04 on my laptop) I found that when I installed docker from snap that my X11 set up would not work. I removed docker from the snap set up and then installed directly from downloaded files from the docker distribution site. This solved the problem... I presume there is additional set up required with the snap installation but I could not find the magic formula...</li>
	</ul>
</ul>


