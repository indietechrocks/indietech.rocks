---
layout: page
title: "Howto: run your own Bitcoin node on your home server"
---

<a href="https://bitcoin.org/"><img style="float:right; margin-left: 15px" src="/images/bitcoin.png"/></a>

Running the Bitcoin Daemon on UBOS
----------------------------------

Running the Bitcoin daemon on UBOS is quite straightforward. Logon to your
UBOS device as shepherd, and execute:

<pre>
sudo systemctl start bitcoind.service
</pre>

By default, the Bitcoin daemon listens to JSON-RPC commands issued from the local
device only, secured by a device-specific, automatically generated user/password
combination.

