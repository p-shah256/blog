+++
title = "The Hidden Dangers of AI Copilots for Junior Developers"
author = ["Pranchal Shah"]
date = 2024-12-10
draft = false
+++

I used to think being a 10x engineer meant coding at lightning speed. Fire up the IDE, let the AI copilot take the wheel, and watch the code flow. Ship fast, ship often, right?
Wrong. Dead wrong.
It took a $5,000 AWS bill (thankfully caught in review) and a complete rewrite of my systems programming project to learn what real engineering means: understanding what happens beneath the surface.
You see, when I first started coding a few years ago, I was obsessed with velocity. Writing services and apps overnight, pushing features at breakneck speed. That's what great programmers do, right? This mindset led me straight into the welcoming arms of AI copilots. Finally, I could achieve those overnight delivery dreams!

What I didn't realize was that I was building on quicksand. The 10x engineers I looked up to weren't just fast - they had this almost supernatural ability to see through abstractions. They understood systems from the lowest-level details to the highest-level architecture. That kind of understanding? You can't get it from hitting the TAB key on AI suggestions.

Let me tell you how I learned this lesson the hard way...


## The real cost of not being intentional {#the-real-cost-of-not-being-intentional}

Every time I let AI autocomplete a large chunk of code, I catch myself skimming through it with a dangerous assumption: "This looks about right."
But here's the thing about software engineering - "looks about right" can be catastrophically wrong. Especially with infrastructure and security. One misplaced parameter in your cloud configuration isn't just a bug - it's potentially thousands of dollars walking out the door.
I learned this lesson through sheer luck. During a code review, my senior engineer caught something in my Pulumi configuration that made him pause.
"Did you mean to set this resource requirements?" he asked.
"And why do we need so much memory and vCPU?"
Silence. I didn't know how it had got there.

If that PR had slipped through... let's just say I prefer my AWS bills without heart-attack-inducing surprises.


#### The UNIX shell story {#the-unix-shell-story}

But it wasn't a potential cloud disaster that really drove this lesson home. It was a seemingly simple university project that changed how I think about code forever.
Picture this: Systems programming class, building a Unix shell from scratch. Like any "efficient" developer, I dove straight into coding. No design, no planning - just me, my IDE, and a list of features to implement.

The result? 1,200 lines of what I'll generously call "code." Sure, it worked... technically. But every new feature was like playing Jenga with spaghetti. Edge cases? Pure nightmare fuel.
Then came submission day. 7 PM, five hours until deadline, after a week of wrestling with this monster. I hit a wall. Looking at my tangled mess of array manipulations and nested loops, something finally clicked: I had never actually thought about the design. Not once. So I did something that felt insane at the time - I stepped away from my computer. Took a walk. And for the first time, I actually thought about how a shell should work. No IDE, no Stack Overflow, no copilot suggestions. Just pure thinking.

When I came back, I rebuilt everything using linked lists instead of arrays. The result? 300 lines of code that I could actually explain. Features that had been taking hours now took minutes to implement. Edge cases almost handled themselves. This wasn't just about using a different data structure. It was about understanding why that structure was better. Every line had a purpose. Every decision had reasoning behind it. For the first time, I wasn't just writing code - I was engineering a solution.
