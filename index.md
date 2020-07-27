---
layout: default
title: Hello World!
---
You’ll notice this is almost identical to index.html except there’s no front matter and the content of the page is replaced with a content variable. content is a special variable which has the value of the rendered content of the page it’s called on.

To have index.html use this layout, you can set a layout variable in front matter. The layout wraps around the content of the page so all you need in index.html is:

After doing this, the output will be exactly the same as before. Note that you can access the page front matter from the layout. In this case title is set in the index page’s front matter but is output in the layout.
