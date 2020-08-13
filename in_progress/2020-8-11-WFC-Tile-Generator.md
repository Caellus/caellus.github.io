---
layout: post
title: WFC: The Tile Generator
description: "Post 3 on the WFC algorithm."
keywords: "proc gen, quantum mechanics, game dev"
comments: true
---

The tile generator of wfc is one of the first systems which runs, and its purpose is to break up an input image into usable tiles with additional data about their edges.

It first breaks up the image into NxN tiles, where N is just a variable passed to wfc to tell it how big the tiles should be (3 is a good default), and saves each tile as an image. I'm using Lua, which allows be to store each tile as a table with values for the image, edge data, and other important information, but there are analogues to the structure I have in almost any language. Something important to note here is that we are generating _overlapping_ tiles. This means that the pixels on the edge of each tile are the same as the tile next to it. This is important because when we stitch the tiles together at the end of the algorithm, we want to make sure that the resulting image looks seamless.

Now that we have tiles, we need to process them to get data which will be used later. To start, we check if there are redundant images, and if there are we remove the redundancies but keep track of how many duplicates there were. This will serve as a weight for the observer system later (and the concept of a weight will be explained in that article). Additionally, now is 