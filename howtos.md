---
layout: page
title: Howtos
permalink: /howto/
---

Some products do what you want out of the box. Some require assembly.
Which is why we collect tutorials here.

How to set up an Indie Website
------------------------------

<a href="https://indieweb.org/"><img style="float:right; margin-left: 15px" src="/images/indiewebcamp.png"/></a>

An Indie Website lets you post and interact with your friends just like you
can on social media. But you do it from a website that you control. The Indie
Website will then publish your content to Facebook, Twitter, and other social
media sites.

Comments and likes from your friends will automatially show up again on your
website. The result: all the benefits of social media, with few of the downsides.

<a href="https://withknown.com/"><img style="float:right; margin-left: 15px" src="/images/products/known.png" width="50" height="50" /></a>
<a href="https://wordpress.org/"><img style="float:right; margin-left: 15px" src="/images/products/wordpress.png" width="50" height="50" /></a>

* How to set up an Indie Website on the Amazon EC2 cloud:
  * [Using Wordpress and the Indie Web plugins](https://indieweb.org/Tutorial:_Set_up_an_IndieWebSite_using_WordPress_on_the_Amazon_cloud)
    (link to tutorial on [indieweb.org](https://indieweb.org))
  * [Using Known](https://indieweb.org/Tutorial:_Set_up_an_Indie_Website_using_Known_on_Amazon_Web_Services)
    (link to tutorial on [indieweb.org](https://indieweb.org))

How to set up a home server (aka personal cloud) for sharing, blockchain, decentralized social media and/or home automation
---------------------------------------------------------------------------------------------------------------------------

No, that does not require lots of proprietary hardware. You can run apps that you don't screw you
for all of those, and more, on a single piece of hardware you own.

The biggest decision to make is whether you will make your home server the first device
in that directly connects to your ISP, or you run your home server behind your router
on your home network. This Howto will help you decide:
[Should my home server replace my router?]({% link howto/home-server-as-router.md %})

* If you decide to **replace your home router with a home server**:
  * Setting up the hardware:
    * [Setting up a PC with two Ethernet ports as your home server that replaces a home router]({% link howto/pc-two-ethernet-home-router.md %})
    * [Setting up an ESPRESSObin single-board computer as your home server that replaces a home router]({% link howto/espressobin-home-router.md %})
  * Setting up networking:
    * [How to make the apps on your home server accessible from anywhere on the internet]({% link howto/enable-app-access-from-internet.md %})
    * [How to prevent anybody other than people on your local network from accessing the apps on your home server]({% link howto/prevent-app-access-from-internet.md %})
  * Setting up apps:
    * [How to run Nextcloud for file sharing, calendaring, contacts and other]({% link howto/nextcloud-home-router.md %})
    * [How to setup your own Mastodon server for decentralized microblogging from your home server]({% link howto/mastodon-home-router.md %})
    * [How to automate your home with OpenHAB with your home server/router]({% link howto/openhab-home-automation.md %})
    * [How to run your own Bitcoin node on your home server/router]({% link howto/bitcoin-node.md %})
    * [How to run your own Ethereum node on your home server/router]({% link howto/ethereum-node.md %})
    * [How to run your own Ethereum dapps on your home server/router]({% link howto/ethereum-dapps.md %})
    * [How to run your own Monero node on your home server/router]({% link howto/monero-node.md %})

* If you decide to **keep your home router in place and run your home server inside your home network**:
  * Setting up the hardware:
    * [Setting up a Raspberry Pi as your home server behind your existing router]({%link howto/raspberrypi-as-home-server.md %})
    * [Setting up an Intel NUC as your home server behind your existing router]({%link howto/intel-nuc-as-home-server.md %})
  * Setting up networking:
    * [How to forward ports from your home router to your home server]({%link howto/configure-router-forward-ports.md %})
    * [Publishing to the internet using Tor]({%link howto/publish-via-tor-hidden-service.md %})
  * Setting up apps:
    * [How to run Nextcloud for file sharing, calendaring, contacts and other]({%link howto/nextcloud-home-server.md %})
    * [How to automate your home with OpenHAB with your home server]({% link howto/openhab-home-automation.md %})
    * [How to run your own Bitcoin node on your home server]({% link howto/bitcoin-node.md %})
    * [How to run your own Ethereum node on your home server]({% link howto/ethereum-node.md %})
    * [How to run your own Ethereum dapps on your home server]({% link howto/ethereum-dapps.md %})
    * [How to run your own Monero node on your home server]({% link howto/monero-node.md %})
