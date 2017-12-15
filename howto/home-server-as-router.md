---
layout: page
title: "Howto: Should my home server replace my router?"
---

There are two basic choices for how to connect your home server: you
either replace your WiFi router with your home server, or your leave it in
place. There are pros and cons for both:

<style>
table.alternative td,
table.alternative th {
    width: 50%;
    border: 1px solid #808080;
    padding: 10px;
    vertical-align: top;
}
table.alternative th {
    font-weight: bold;
}
table.alternative p.img {
    text-align: center;
}
</style>
<table class="alternative">
 <thead>
  <tr>
   <th>Leave your existing WiFi home router in place</th>
   <th>Make your home server your router</th>
  </tr>
 </thead>
 <tr>
  <td>
   <p>Diagram:</p>
   <p class="img"><img src="/images/home-server-routing-alternatives-1.png"/></p>
  </td>
  <td>
   <p>Diagram:</p>
   <p class="img"><img src="/images/home-server-routing-alternatives-2.png"/></p>
  </td>
 </tr>
 <tr>
  <td>
   <p>All traffic to and from the internet passes through your existing
      home WiFi router.</p>
  </td>
  <td>
   <p>All traffic to and from the internet passes through your home server. Your WiFi
      router now forwards WiFi packets only.</p>
  </td>
 </tr>
 <tr>
  <td>
   <p>Pro:</p>
   <ul>
    <li>Does not disrupt your existing network</li>
    <li>Your home server is less likely to be attacked</li>
   </ul>
  </td>
  <td>
   <p>Pro:</p>
   <ul>
    <li>You can publish to the public internet</li>
    <li>You can access your home server away from home</li>
   </ul>
  </td>
 </tr>
 <tr>
  <td>
   <p>Con:</p>
   <ul>
    <li>Limits your ability to publish to the public internet</li>
    <li>Cannot access your home server away from home</li>
   </ul>
  </td>
  <td>
   <p>Con:</p>
   <ul>
    <li>More disruptive to your home network</li>
    <li>Requires a home server with two fast Ethernet interfaces</li>
   </ul>
  </td>
 </tr>
 <tr>
  <td>
   <p>Possible pitfalls:</p>
   <ul>
    <li>You may not be able to use all apps you want to use</li>
   </ul>
  </td>
  <td>
   <p>Possible pitfalls:</p>
   <ul>
    <li>Your ISP may contractually prevent you from doing this</li>
   </ul>
  </td>
 </tr>
</table>
 
If you make your home server your router, it opens up more possibilities,
so that's the more powerful alternative. But before you consider it:

* Check the terms and conditions of your internet service provider that
  nothing prevents you from setting up a publicly accessible website
  on a device in your home. (If there is, you may want to consider
  switching ISPs.)
* Make sure you have hardware that has two high-speed Ethernet interfaces
  and that can be configured as a router. This is generally easy for:
  * any desktop or server-class PC that you might be using as a home
    server; at worst, you need to add a separate Ethernet card, which is
    not hard.
  * devices such as the ESPRESSObin that have more than one Ethernet
    interface built in.
* It is not recommended for devices such as the Raspberry Pi, which only
  has one Ethernet interface. You can add more by adding a USB-to-Ethernet
  adapter, but your internet speed will likely suffer as USB2 cannot
  transmit data as fast as you probably like.
