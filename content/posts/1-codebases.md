

# How I understood a complex codebase

> Note: This is not the only way to understand complex codebases, its just a way that I discovered and used recently. Feel free to disagree!

I was recently contributing to a large codebase(close to 40k lines - not too big, but big enough for an intern) at my work: FoxyAI and had to resolve an issue with sending binary data for images back as a response from our endpoints.

I tried pushing code for the endpoint and being silly, I expected it to work. Why? cause I had the exact same thing written in a smaller codebase and it worked, so why doesn&rsquo;t it here? Eventually I had to take the hard path, to make an effort to understand the codebase, and that sounded scary and hard.

I like the analogy of thinking a codebase as a car. Understanding it is just like an engineer who is curious to understand how a car works. He/she starts pulling things apart. Opens the hood and sees a lot of things in it, and then recursively tries to understand each of the component they see. And then slowly building it back with the understanding, nothing has changed - except now, the engineer knows how it works!

This is how I treated it like a machine:

1.  Just pick one *happy path* as input and ouput.
2.  Start from the input into the codebase.
3.  Peel one layer after another - basically call `gd` on each function.
4.  Repeat recursively until you encounter the lowest level which is the domain/service
    How do you know you have hit that place?
    its touches the langauage source code/without any frameworks/libs
5.  Start returning and putting the layers back one by one.
6.  Eventually build a flow chart from request to response of any given happy path

Surprisingly not me and nor my senior engineer noticed that there was a `serverless express` framework sitting under, and by using this method we eventually found that it was that bad boy who was modifying the responses that we were sending to apigateways. It was this component that was messing it up.
And so it was like finding a part none of us put in there, but someone put it and we didn&rsquo;t know about it!


### TLDR:

Understanding the codebase is just about two keymaps:
`gd` = [g]o to [d]efinition and `bd` = [b]uffer [d]elete

-   `gd` is like pulling it apart.
-   `bd` is like putting it back.

