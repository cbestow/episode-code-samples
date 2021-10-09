## [Point-Free](https://www.pointfree.co)

> #### This directory contains code from Point-Free Episode: [Protocol Witnesses: Part 2](https://www.pointfree.co/episodes/ep34-protocol-witnesses-part-2)
>
> Last time we covered some basics with protocols, and demonstrated one of their biggest pitfalls: types can only conform to a protocol a single time. Sometimes it’s valid and correct for a type to conform to a protocol in many ways. We show how to remedy this by demonstrating that one can scrap any protocol in favor of a simple datatype, and in doing so opens up a whole world of composability.

## Instructions to run playground

The following was copied from /episode-code-samples/0017-styling-pt2/README.md

* Clone repo
* `cd` into this directory
* Initialize submodule: `git submodule update --init`
* Open `ep0017.xcworkspace`
* Build `cmd+B`
* Open and run the playground!

Then as per [the following answer] I also needed to

* Build the framework targetting a simulator
* Select `Build Active Scheme` in the inspector for the Playground

[the following answer]: https://stackoverflow.com/a/63972607