<p># caddy-v2-wordpress-caddyfile</p>
<h3>WordPress Caddyfile for Caddy Server Version 2.0</h3>
<p>Instruction is only cater for FreeNAS, or FreeBSD. Tested and working on FreeNAS 11.2-U7 and FreeNAS 11.2-U8</p>
<h3>Find the Caddy V2 Official Release from here :</h3>
<p><a href="https://github.com/caddyserver/caddy/releases">https://github.com/caddyserver/caddy/releases</a></p>
<p><strong>a) go the your jail</strong></p>
<p style="padding-left: 30px;">at termainal , type &gt; jls<br /> it should list out your current running jail</p>
<p><strong>b) to enter your jail through therminal</strong></p>
<p style="padding-left: 30px;">type &gt; jexec &lt;num&gt; tcsh <br /> example , &gt; jexec 1 tcsh</p>
<p><strong>c) fetch the Caddy program </strong></p>
<p style="padding-left: 30px;">type &gt; fetch https://github.com/caddyserver/caddy/releases/download/v2.0.0/caddy_2.0.0_freebsd_amd64.tar.gz</p>
<p><strong>d) untar the file</strong></p>
<p style="padding-left: 30px;">type &gt; tar -xjf caddy_2.0.0_freebsd_amd64.tar.gz</p>
<p><strong>e) confirm the caddy version</strong></p>
<p style="padding-left: 30px;">type &gt; ./caddy version<br /><span style="color: #0000ff;">v2.0.0 h1:pQSaIJGFluFvu8KDGDODV8u4/QRED/OPyIR+MWYYse8=</span><br /><br />Note: after the h1: is the version, <br />it might be vary. but as long as v2.0.0 you are good<br /><br /></p>
<p><strong>f) in case you face file cannot run due to permsion:</strong></p>
<p style="padding-left: 30px;">type &gt; chmod 744 caddy<br /> change the permision of file, so you can run it.</p>
<p><strong>g) copy the file to bin so you can run it anywhere</strong></p>
<p style="padding-left: 30px;">type &gt; cp caddy /usr/local/bin</p>
<p>Good Luck and have fun</p>
