# Base Repository Setup for RPi3B+

This document will gather all the steps to be performed to create an image for the Raspberry Pi 3 model B+ based on the Buildroot repository used for the AESD assignments. The steps to be followed are shown next:

- Follow the instructions for ["Setting up Buildroot for Hardware Builds"](https://github.com/cu-ecen-aeld/buildroot-assignments-base/wiki/Setting-up-Buildroot-for-Hardware-Builds) including the comments specific for Raspberry Pi in ["Raspberry Pi Hardware Support"](https://github.com/cu-ecen-aeld/buildroot-assignments-base/wiki/Raspberry-Pi-Hardware-Support). These links also include information about building and creating the SDCard image.

- To be able to flash the image into the SDCard, follow the instructions in ["Flashing Images to SDCard"](https://github.com/cu-ecen-aeld/buildroot-assignments-base/wiki/Flashing-Images-to-SDCard).

It is important to set up the correct configuration in the menuconfig:

- Base external packages must be configured.
- Enable SSH Dropbear server.
- Change the root password.
