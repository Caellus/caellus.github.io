---
layout: post
title: WFC Propagator Constructor
description: "Post 4 on the WFC algorithm."
keywords: "proc gen, quantum mechanics, game dev"
comments: true
---

The propagator (and the constructor system) is probably the most often misunderstood part of the wfc algorithm. The basic idea is that its a way to easily access the adjacency data generated in the tile generation stage. The propagator constructor generates four lists of booleans (one list for each side of the tile) for every tile, where each boolean corresponds to whether or not a tile can go in the adjacent location which the list is describing. Now that's a lot of words, so let's see how that looks.
