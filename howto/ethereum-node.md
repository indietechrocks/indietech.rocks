---
layout: page
title: "Howto: run your own Ethereum node on your home server"
---

<a href="https://bitcoin.org/"><img style="float:right; margin-left: 15px" src="/images/ethereum.png"/></a>

Running the Ethereum "geth" Daemon on UBOS
------------------------------------------

Running geth on UBOS is quite straightforward. Logon to your
UBOS device as shepherd, and execute:

<pre>
sudo systemctl start geth.service
</pre>

By default, the Ethereum daemon listens to JSON-RPC commands issued from the local
device only.
