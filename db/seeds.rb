Project.create([
                   {
                       name: 'Resizive',
                       url: 'http://resizive.com',
                       description: 'An incredible tool that enables easier detection of content-based breakpoints for media queries in regards to responsively designed fluid-width websites. It allows increment \'stepping\' of the viewport width to discover when your website\'s content layout is failing, and can also animate between a minimum and maximum width to help visualize your design in real time. This allows you to discard outdated device sizes as your breakpoints for your media queries, and use the content itself as a guide, fulfilling a richer, better experience.',
                       image: 'resizive.jpg',
                       github: 'https://github.com/BradleyStaples/Resizive',
                       display_order: 1
                   },
                   {
                       name: 'Remember The Ginger',
                       url: 'http://projects.gingerboydev.com/remember-the-ginger/',
                       description:  'A fun, fast card game of \'concentration\' more commonly known as Match or Memory, simply flip cards over to match them with their twin until you have matched all the cards. Powered by JavaScript and CSS3 animations, the game remembers how many flips it takes you to complete the game. It also monitors time to complete the game to give you a few simple metrics to compare against yourself or others.',
                       image: 'cards.jpg',
                       github: 'https://github.com/BradleyStaples/Remember-The-Ginger',
                       display_order: 2
                   },
                   {
                       name:  'Minesweeper',
                       url:  'http://projects.gingerboydev.com/minesweeper',
                       description:  'A simple game that lets you flag mines, show empty squares, keeps score and even cheat, if you\'re so inclined. In addition, you can save and load your game later. Uses CSS3 to create a thoughtful in-game experience.',
                       image:  'minesweeper.jpg',
                       github: 'https://github.com/BradleyStaples/minesweeper',
                       display_order: 3
                   },
                   {
                       name: 'Randle',
                       url: 'http://projects.gingerboydev.com/randle',
                       description: 'A small, simple app meant to ease the creation of random (and pseudo-random) passwords and strings. The app will create strings with pattern recognition allowing for literal characters to be inserted into patterns. It\'s also possible to specify the types of characters allowed, including lowercase letters, uppercase letters, numbers and symbols. Taking advantage of full random mode gives the option to set the minimum and maximum number of characters allowed.',
                       image: 'randle.jpg',
                       github: 'https://github.com/BradleyStaples/Randle',
                       display_order: 4
                   },
                   {
                       name:'Fontbeast',
                       url: 'http://projects.gingerboydev.com/fontbeast',
                       description: 'A fun web app that uses an HTLM5 Canvas element to create an \'image\' of a textual logo or saying. Customize the text displayed and font-face by choosing from the hundreds of fonts in <a href="http://www.google.com/fonts/">Google\'s Web Font Library</a>. Fontbeast also allows for custom text color and size, stroke color and size, as well as background color. When your options are ready to go, the web app generates the canvas element as a preview, and then shares the code to create the same canvas yourself on your own website.',
                       image: 'fontbeast.jpg',
                       github: 'https://github.com/BradleyStaples/FontBeast',
                       display_order: 5
                   }
               ])



Portfolio.create([
                     {
                         name:  'Glyde',
                         url:  'http://glyde.com',
                         description:  'A peer-to-peer ecommerce marketplace, Glyde is an easy, fast way to buy and sell both video games and consumer electronics. Responsible for maintaining and adding user-facing features, often via client-side templates with Hogan/Mustache, I architected landing pages that heavily impacted Glyde\'s SEO benefits (%% placeholder) while reducing SEM costs (%% placeholder). A rapid, agile-based development cycle led to numerous quick UI updates, implemented based on specifications from the on-staff designer. Using Split, an A/B testing framework, I created potential new features and then recorded the results using KISSmetrics, which allowed the business and product teams to determine performance. Working with Glyde\'s codebase taught me Ruby on Rails, HAML and SASS.',
                         image:  'glyde.jpg',
                         display_order: 1
                     },
                     {
                         name:  'Sell Smart',
                         url:  'http://glyde.com/sell-smart',
                         description:  'Glyde\'s Sell Smart tool was designed to improve conversion by proving the effectiveness of Glyde\'s marketplace. I worked in tandem with a back-end engineer on a separate codebase from Glyde\'s main website, working in a Rails 3 app. Utilizing CoffeeScript, HAML, and SASS for the front end, along with heavy usage of Underscore.js, I quickly developed and iterated the UI based on specs from the designer. Prices were scraped from competing online marketplaces, and this data - along with other data such as ease of use, shipping details, selling time, etc. - were rendered to users in a sortable table for a variety of consumer electronic products, most notably Apple devices. Also of considerable note was the Google Chart used to create a view of price histories for the various marketplaces, showing not only current price but also general trends over a 60-day window. The chart was made as a Rails partial, built and viewed in a manner that allowed it to be displayed on third party websites as well as within Glyde.',
                         image:  'sellsmart.jpg',
                         display_order: 2
                     },
                     {
                         name:  'Glyde (Mobile)',
                         url:  'http://m.glyde.com',
                         description:  'Glyde\'s mobile site was minimal at best when I started, and within my first few weeks at the company I was adding features along with the other engineers. It makes heavy use of Hogan/Mustache templates and Underscore.js, and is very AJAX heavy to the point that, while not truly a Single Page App it comes close with only a small amount of fully separate views. The same code-base for this was also utilized in powering a third party marketplace widget called the Inline Store. The Inline store allowed third parties to let Glyde host fully functional buying and selling of devices on their websites without the need to come to Glyde directly, via clever scripting around modal dialogs and iframes.',
                         image:  'glyde-mobile.jpg',
                         display_order: 3
                     },
                     {
                         name: 'Roundstone Native Seed',
                         url: 'https://www.roundstoneseed.com/',
                         description: 'Roundstone Native Seed sells seeds for flowers, grasses, food plots, and more. Using a customized ecommerce system that I created while employed by TWG Design Studios, the site required heavy modifications to the standard modeling for the ecommerce package usually sold. Seeds could be sold priced per unit, per ounce, and/or per pound; mixes were made of various quantities, numbers, and ounces of seeds, but could also be completely customized and created on-the-fly by users. A heavy ajax system allowed the user to sort and search by region, price, type, and various other criteria. Virtually all of the information was lazily loaded in tooltips and modal dialogs to make the shopping experience easier than competing sites, which required navigating dozens of pages. <span class="ecom-modal-text">Also included the same features outlined in the <a href="#standardEcom" data-toggle="modal">standard ecommerce system</a>.</span>',
                         image: 'roundstone.jpg',
                         display_order: 4
                     },
                     {
                         name: 'My New KY Home',
                         url: 'http://www.mynewkyhome.com/',
                         description: 'My New KY Home is a centralized system containing all listings, agent info, and more, for participating brokers, agents and real estate agencies. The site\'s SQL Server database powered all of the separate websites for the participants. Heavy usage of AJAX allowed sorting, searching, pagination, and multiple views (via modal dialogs) of all tabular information. My New Kentucky Home made moderate usage of cookies to save sorting filters and search settings. A previous incarnation of the site existed before I was employed at TWG, but during my employ I rewrote the code base, drastically improving functionality, organization, and performance. Using classic ASP it took a massive amount of custom backend code just to manage CRUD operations. With the new code base, functionality was greatly improved:</p>
<ul><li>Logins could be per agency or per agent</li><li>Unlimited image uploads could be attached to listings (previously limited to 4)</li><li>Listings could be of varying types, including rentals, auctions, residential, business/industrial, land only etc.</li><li>Common listing features were easily managed by toggling a checkbox in the admin</li></ul><p>Users searching for listings could search via nearly a dozen different criteria and then, if they created an account, save listings, schedule showings, email to a friend, get printer friendly versions, calculate mortgages, and share to social media. On top of these features, the site leveraged ads created for all agents and agencies participating, a dream home finder, and a community-feature database.',
                         image: 'mnkh.jpg',
                         display_order: 5
                     },
                     {
                         name: 'Dawn Bland',
                         url: 'http://www.dawnbland.com/',
                         description: 'Dawn Bland is a fitness trainer and sells monthly memberships to watch online videos, organized as classes. I programmed a monthly recurring subscription, first for PayPal, and later for Authorize.net. Feature detection was used to determine which video to send to the client, such that different codecs and file types could be sent via separate methods (flash or precursors to what would become HTML5), allowing for playback on as many devices as possible, including regular browsers, iPhones, iPads and game systems. Later on the client also added a customized ecommerce section to the website that facilitated selling tangible goods as well as for-purchase downloadable videos, for customers who didn\'t want to stream video. <span class="ecom-modal-text">Also included the same features outlined in the <a href="#standardEcom" data-toggle="modal">standard ecommerce system</a>.</span>',
                         image: 'dawnbland.jpg',
                         display_order: 6
                     },
                     {
                         name: 'Arnold\'s Coffee',
                         url: 'http://www.arnoldscoffee.com/',
                         description: 'With a name in the local community, Arnold began selling his gourmet coffee online. His site was a custom ecommerce system that allowed for variations of coffee categories, grinds, caffeinated vs. decaf, bag sizes, and frequent sales pricing. The site was not originally built for ecommerce, proving the flexibility of the solution I crafted. <span class="ecom-modal-text">Also included the same features outlined in the <a href="#standardEcom" data-toggle="modal">standard ecommerce system</a>.</span>',
                         image: 'arnoldscoffee.jpg',
                         display_order: 7
                     },
                     {
                         name: 'Tri-State Healthcare I.T. Conference',
                         url: 'http://www.tri-state-health-it.com/',
                         description: 'This site required a custom email system that allowed for multiple view templates and could deliver to email addresses and/or user\'s mobile phones via SMS messaging. These email blasts could be sorted into categories, so mass-mailings could be sent to all recipients, individuals or specific subgroups. I also developed a registration and associated survey system to keep track of potential prize give-a-ways for early-bird registrants, who automatically fed into their own subgroup in the email mailing lists. The registration utilized Authorize.net as a payment gateway.',
                         image: 'tri-state-hit.jpg',
                         display_order: 8
                     },
                     {
                         name: 'Hardin County Schools PAC',
                         url: 'http://thepac.net/',
                         description: 'The Performing Arts Center, or PAC, was the community center for all things involving the arts, and was used outside of the school system. The website sold tickets for shows with limited seating (and thus tickets) available for each of the sections, and tickets prices could vary depending on the show date, time, seating section, and whether the show was primarily for schools or open to the public. The site also allowed patrons to fill out a multi-page form to rent the facility for their own plays or other theatrical acts, and this in turn fed a dynamically created interactive PDF that was used for contracts and booking by PAC staff. The entire process was supported by a detailed admin tool used by staff to edit, approve, deny, reschedule, search and duplicate all applications. I also developed other small features for patron feedback, surveys, schedules and requests. I was heavily occupied on three of their yearly redesigns on both the front-and back-end, and a fourth year doing the back-end alone. During these redesigns I re-engineered the facility rental sections, removing much of the needless complexity for a more streamlined, functional experience.',
                         image: 'pac.jpg',
                         display_order: 9
                     }
                 ])
