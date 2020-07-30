---
layout: post
title: A High-Level Overview of WFC
description: "Post 2 on the WFC algorithm."
keywords: "proc gen, quantum mechanics, game dev"
comments: true
---

With the assumption that you've either read the previous article on wfc or already know what it is, I'm just going to launch straight into an overview of the systems of the algorithm and how they operate together.

### Overview

My wfc implementation is made of four main systems. Mine are called the tile generator, the propagator constructor, the observation system, and the propogation system, and though other people may call them different things they make up the basis of how wfc works. 

- The tile generator does exactly what it sounds like: it generates tiles
- the propagator contructor 