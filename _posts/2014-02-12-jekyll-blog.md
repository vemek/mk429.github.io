---
layout: post
title: Creating a Blog with Jekyll
category: web
tags: jekyll ruby web css
---

Here's the plugin I use to generate my category and tag index pages. I can still host my site on Github Pages, as this will create standard jekyll index pages, which will pull in all posts for the tag in question. I only need to run this when I introduce an entirely new tag or category, not every time I write a post.

{% include gist.html hash="9592332" %}
