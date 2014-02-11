---
layout: post
title: Running Debian on a MacBook Air
category: linux
tags: macbook apple mac linux debian
---
I really like Apple's MacBooks, but I don't feel comfortable unless I can use my preferred, super-customisable, Linux-based OS distribution. Debian Wheezy is running on my laptop like a dream, but I am seeing a strange issue when I connect an Apple Thunderbolt Monitor to it. There's a [DRM driver polling problem](https://patchwork.kernel.org/patch/2400621/)

Luckily, I found an obscure temporary (and hacky) fix: [http://ubuntuforums.org/archive/index.php/t-2034855.html](http://ubuntuforums.org/archive/index.php/t-2034855.html
)
i.e.: echo "options drm_kms_helper poll=N">/etc/modprobe.d/local.conf

