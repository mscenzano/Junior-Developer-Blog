# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Post.create(title:"Your digital Paintball machine", body: "That said, I do have some tweaks I recommend:

Make absolutely sure you get an IPS panel as your 27  playfield monitor. As arrived, mine had a TN panel and while it was playable if you stood directly in front of the machine, playfield visibility was pretty dire outside that narrow range. I dropped in the BenQ GW2765HT to replace the GL2760H that was in there, and I was golden. If you plan to order, I would definitely talk to Paul at VirtuaPin and specify that you want this IPS display even if it costs a little more. The 23 backglass monitor is also TN but the viewing angles are reasonable-ish in that orientation and the backglass is mostly for decoration anyway.

The improved display has a 1440p resolution compared to the 1080p originally shipped, so you might want to upgrade from the GeForce 750 Ti video card to the just-released 1050 Ti. This is not strictly required, as I found the 750 Ti an excellent performer even at the higher resolution, but I plan to play only fully 3D pinball sims and the 1050 Ti gets excellent reviews for $140, so I went for it.

Internally everything is exceptionally well laid out, the only very minor improvement I'd recommend is connecting the rear exhaust fan to the motherboard header so its fan speed can be dynamically controlled by the computer rather than being at full power all the time.

On the Virtuapin website order form the PC they provide sounds quite outdated, but don't sweat it: I picked the lowest options thinking I would have to replace it all, and they shipped me a Haswell based quad-core PC with 8GB RAM and a 256GB SSD, even though those options weren't even on the order form.

I realize $3k (plus palletized shipping) is a lot of money, but I estimate it would cost you at least $1500 in parts to build this machine, plus a month of personal labor. Provided you get the IPS playfield monitor, this is a solidly constructed  pinball machine, and if you're into digital pinball like I am, it's an absolute joy to play and a good deal for what you actually get. As Ferris Bueller once said: If you'd like to experiment with this and don't have three grand burning a hole in your pocket, 90% of digital pinball simulation is a widescreen display in portrait mode. Rotate one of your monitors, add another monitor if you're feeling extra fancy, and give it a go.")


Post.create(title:"Snowden: lets encrypt everything", body: "But post Snowden, and particularly after the result of the last election here in the US, it's clear that everything on the web should be encrypted by default.

Why?

You have an unalienable right to privacy, both in the real world and online. And without HTTPS you have zero online privacy – from anyone else on your WiFi, from your network provider, from website operators, from large companies, from the government.

The performance penalty of HTTPS is gone, in fact, HTTPS arguably performs better than HTTP on modern devices.

Using HTTPS means nobody can tamper with the content in your web browser. This was a bit of an abstract concern five years ago, but these days, there are more and more instances of upstream providers actively mucking with the data that passes through their pipes. For example, if Comcast detects you have a copyright strike, they'll insert banners into your web content … all your web content! And that's what the good guy scenario looks like – or at least a corporation trying to follow the rules. Imagine what it looks like when someone, or some large company, decides the rules don't apply to them?

So, how do you as an end user encryption on the web? Mostly, you lobby for the websites you use regularly to adopt it. And it's working. In the last year, the use of HTTPS by default on websites has doubled.")


Post.create(title:"Encryption latest news", body: "As a company, we've donated a Discourse hosted support community, and a cash amount that represents how much we would have paid in a year to one of the existing for-profit certificate authorities to set up HTTPS for all the Discourse websites we host.

I urge you to do the same:

Estimate how much you would have paid for any free SSL certificates you obtained from Let's Encrypt, and please donate that amount to Let's Encrypt.

If you work for a large company, urge them to sponsor Let's Encrypt as a fundamental cornerstone of a safe web.

If you believe in an unalienable right to privacy on the Internet for every citizen in every nation, please support Let's Encrypt.

[advertisement] Find a better job the Stack Overflow way - what you need when you need it, no spam, and no scams.
")
Post.create(title:"State Drift", body: "State drift is when there’s two components that synchronize state. Actually, doesn’t even have to be two, and the “state” may be somewhat virtual, not in an explicit sense. But to make it easy let’s say we have a producer who maintains a state, and the producer sends deltas to an observer, that updates its own state. If care isn’t taken, the state in the observer will start to drift away from what it’s supposed to be. Without a self-correction mechanism, you are forever screwed.

These three real world cases came up independently of each other today:

Service updates over email — sadly some of our vendors have suboptimal API’s (this is the mortgage industry) and we have to resort to email parsing to get certain updates. But emails get lost and formats change and suddenly you realize your view of the outstanding service order doesn’t match the vendor’s view.
Webhooks — have a lot of other annoying issues (more on that later) but in particular there is rarely any redelivery guarantees. A lot of API’s look call back using webhooks when some data is ready (for operations that take longer than a second) but what if that callback gets lost in the ether?
Websockets to push state to clients — we use a single page app and some of the state is pushed from the backend to the frontend, meaning the frontend has its own view of what the backend state looks like.")
