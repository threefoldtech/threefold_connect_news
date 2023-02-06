---
title: ⚡️ Update - Power Management (Farmerbot) Feature 
date: 2023-02-02
published: true
tags: ['threefold_grid','technology','community', 'decentralization']
cover_image: ./images/farmerbot_update.png
canonical_url: false
description: "As we shared last week, the power management feature is in development. Today, we have a short update directly from the team responsible for it."
---

As we shared [last week](https://forum.threefold.io/t/tfgrid-power-management-feature-for-3-8-1/3721), the power management feature is in development. Today, we have a short update directly from the team responsible for it:

<br/>

“The farmerbot has actors – node (for anything node related) and power (for anything power related) – which are able to execute what we call jobs. Jobs are actions or methods that can be done or executed by an actor. One of them is the ‘find node’ action, which finds a node that can fit the required resources for a specific deployment. While doing that, it will power on the node if it is off. Every five minutes, the farmerbot fetches information about the nodes (calling the nodes directly). With that information it is able to shut down nodes automatically that are not being used.

<br/>

The implementation is now mostly done. The communication between farmerbot, nodes, and tfchain is not yet complete. An exact estimate for completion is hard to provide as there are many variables, but we are working as quickly as we can.”

<br/>

*Thanks to the team for their efforts on this long-awaited feature!*
