ESPRESSObin plus Disk plus 3D-Printed Enclosure: a Perfect Home Server
======================================================================

Why would I want to do this?
----------------------------

Many cheap, and possibly very useful single-board computers are available, like the Raspberry Pi,
the BeagleBone, or the ESPRESSObin. They call out to you: "run me, run me, I will be your
perfect home server" for less than $100. The trouble is, none of them can quite be run
out of the box as a server you actually can rely on.

This has several reasons:
* Storing valuable data on an SD Card is a really bad idea. SD Cards die all the time,
  taking your data with them. But almost all of those boards only offer SD Cards as storage
  medium out of the box.
* If you add a hard disk or a solid state disk, you end up with four boxes! Your single-board
  computer in its box, your disk in its box, and two power supplies in separate boxes.
  With a total 5 cords between them! It's just a matter of time until one comes loose,
  and you lose data.
* As silly as it sounds, the mechanics of arranging all those boxes are difficult. For
  example, while the Raspberry Pi has a really nice looking box, it is rounded at the top,
  and you can't put anything on top. It's too light to stay put on its own, and if you
  stack things, sooner or later your single-board computer or the disk will get too hot,
  and you are out of luck again.

So I set out to create something better: an enclosure for the ESPRESSObin quad-core
single-board computer, a 2.5in (notebook) drive, and optionally, a fan and RGB LED for
status indication using some additional analog electronics.

Result: A home server that doesn't need SD Cards, that properly ventilates, that can
be stacked -- and, as a bonus, can act as an internet router, because it has three
Ethernet ports built-in and can use an optional WiFi module.

Using something like UBOS (disclaimer: my baby), setting up a file sharing and collaboration
application like Nextcloud on it is a snap, and you have a great home server.

What do I need?
---------------

Required:
* An ESPRESSObin board. Depending on RAM, Globalscale will sell it to you for $49 to $79.
* A 12V power supply for the ESPRESSObin board. Gobalscale has it at $10.
* A 2.5 inch ("notebook") SATA hard disk or solid state disk. You can find many different
  choices on sites such as Amazon, Newegg or stores such as Fry's or Microcenter. Solid
  state disks are more expensive, but generally faster. Choose a size that you think you
  won't grow out of in the next year or two. They generally start at about $29.
* A short SATA cable. Some disks come with cables, but because there isn't a lot of room
  in the enclosure, a short 4in is recommended.
* This item is the only hacky part of the project. Globalscale, for whatever reason, used
  what I would consider the "wrong" power connector for their board, and so you need to
  power your disk with something like this splitter.
* An SD Card to set up your hard drive. After you have set it up, you don't need the
  SD Card again.
* A 3D printer, or a friend with a 3D printer, or have commercial service print the
  enclosure for you.
* Some M3 screws:
  * 4 M3x12 self-cutting screws for holding the two halves of the enclosure together
  * 4 M3x6 regular screws for attaching the disk
  * 4 M3x6 self-cutting screws for attaching the board to the enclosure

Optional 1: add a fan (no soldering required)
* A 25mm x 10mm fan for the enclosure, which can keep your ESPRESSObin and the disk
  cool so they won't crash
* A 0.1in male header with two pins

Optional 2: add WiFi and Bluetooth (no soldering required)
* A WiFi card for the ESPRESSObin. Globalscale has one that speaks 809.11ac (the latest
  and fastest) as well as Bluetooth 4.2. It costs $17.95.

Optional 2: add a status LED and make the fan software-controllable (medium soldering
experience, and electronics soldering equipment required)
* A 5mm multicolored LED (also known as an RGB LED) to indicate status of your server
* A breakable 0.1in male header with at least 29 pins
* A prototyping board with at least 24x6 through holes on a 0.1in grid
* A few resistors
* 4 transistors
* 4 short wires to connect the LED pins to the prototyping board. Short female patch
  cables are ideal.

The Project
-----------

The project has four required steps, and some that are optional:
# Print the enclosure
# Attach the ESPRESSObin board and the disk to the enclosure with screws
# Connect the SATA data and power cables, and close the enclosure with the screws
# Install your operating system and applications

If you choose to install the fan, you also need to:
# Place the fan into the enclosure
# Plug the header into the ESPRESSObin's header, and connect the fan's power

If you choose to install WiFi and Bluetooth, you also need to:
# Insert the WiFi card into the socket on the ESPRESSObin

If you choose to add a status LED and make the fan software-controllable, you also need to:
# Assemble 4 single-transistor amplifiers and solder them to the prototyping board
# Solder headers to the prototyping board
# Insert the prototyping board's header into the ESPRESSObin's header
# Connect the fan's power cord to the prototyping board's header
# Connect the LED pins to the prototyping board's header

We will go through those steps one by one.

Print the enclosure
^^^^^^^^^^^^^^^^^^^

Getting good 3D prints, or so it seems to us, depends on a special relationship between
the 3D printer and the owner of the 3D printer. Use whatever magic you need to, but in
general, here is what you need to do:
* Download the STL files for the enclosure. Note there are two versions: one version that
  has a hole for the 5mm status LED (in case you want to install it), and one that does not.
* IF you are not certain whether you will install the LED, download the one without the
  hole and use a drill to drill the hole after the fact if you need to.
* If you don't trust your 3D printer to be particularly precise, it might be a good idea
  to not print the hole but to use a drill afterwards. (It's no fun to expand a 5mm hole
  with a small file...)
* Run your favorite Slicer application that knows how to slice 3D models for your 3D printer.
  Use medium-quality settings, otherwise the print will probably take very long, and the
  enclosure doesn't have to be *that* pretty, right?
* There are two parts that form the enclosure: one part holds the ESPRESSObin board and
  the other holds the disk. To close the enclosure, you screw them together. Both need
  to be printed separately, with the flat side (top or bottom, depending on which half of
  the box you are looking at) on your printer's plate.

Attach the ESPRESSObin board and the disk to the enclosure with screws
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

That's very straightforward. Be gentle, of course: the ESPRESSObin board contains a few
billion transistors, and your hard disk a few hundred billion magnets, and they do like
to be respected :-)

Connect the SATA data and power cables and close the enclosure with the screws
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

It might be a good idea to have the screws ready before you even start, because
there is not a whole lot of room in the enclosure, and these cables might not want to
behave. So once they do, quickly secure everything in place by screwing the enclosure
shut.

You have assembled the hardware!

Install your operating system and applications
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Great hardware, but so far, pretty useless. We need software to run, and that means
some version of Linux as the operating system, and then the app or apps that will serve
your files, or whatever else you want your home server to do.

There are a number of choices for Linux distribution on the ESPRESSObin, including
Ubuntu, Armbian, Yocto, and OpenWRT. Instructions for how to install those on the
ESPRESSObin are provided by Globalscale.

We will continue this tutorial by installing UBOS, a Linux distro that is made specifically
for easily running apps on a home server.

# On a PC, Mac or other computer, download the latest UBOS image from the UBOS website.
# Write that image to an SD Card
# Insert the SD card into the SD card slot of your ESPRESSObin
# Before you connect power, here's the most clumsy part of the entire process: you need
  to do some unnatural acts to get the ESPRESSObin to boot from you
