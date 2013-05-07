# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create([
                   {
                       name:'Fontbeast',
                       slug:'fontbeast',
                       url: nil,
                       blurb: 'Customize Google Web Fonts with colors, sizes, text, and more and output with HTMl5 Canvas. Includes code to recreate.',
                       description: 'Fontbeast allows you to create an HTMl5 Canvas element to create an \'image\' of a textual logo or saying. Customize the text displayed as well as the font-face by choosing from among hundreds of fonts from <a href="http://www.google.com/fonts/">Google\'s Web Font Library</a>, along with text color and size, stroke color and size, and background color, . Once your done, Fontbeast generates the canvas element as a preview, and gives you the code to create the same canvas yourself on your own website.',
                       thumb: nil,
                       image: nil
                   },
                   {
                       name: 'Randle',
                       slug: 'randle',
                       url: nil,
                       blurb: 'Random string (e.g. password) generator. Can limit by character type, string length, and pattern matching.',
                       description: 'Randle is a small, simple app meant to ease the creation of random (and pseudo-random) passwords and strings.<ul><li>Create strings with pattern recognition</li><li>Allows literal characters to be inserted into patterns</li><li>Specify the types of characters allowed: lowercase letters, uppercase letters, numbers, and symbols</li><li>In full random mode, determine the minimum and maximum number of characters allowed.</li><li>Coming Soon: ability to limit to specific letters, numbers, and symbols.</li></ul>',
                       thumb: nil,
                       image: nil
                   },
                   {
                       name: 'Remember The Ginger',
                       slug: 'cards',
                       url: nil,
                       blurb: 'Simple JavaScript card matching game that keeps track of score and a few metrics.',
                       description:  'Remember The Ginger is a fun, fast card game of \'Concentration\' (also called Match and Memory). Keep flipping cards over to match them with their twin until you have matched all cards. Powered by JavaScript and CSS3 animations, the game keeps track of how many flips it takes you to complete the game as well as your time to give you a few simple metrics to compare against yourself or others.',
                       thumb: nil,
                       image: nil
                   },
                   {
                       name: 'Resizive',
                       slug: 'resizive',
                       url: 'http://resizive.com',
                       blurb: 'Enables easier detection of content-based breakpoints for media queries in regards to responsively designed fluid-width websites.',
                       description: 'Resizive is an incredible tool that enables easier detection of content-based breakpoints for media queries in regards to responsively designed fluid-width websites. It allows increment \'stepping\' of the viewport width to discover when your website content\'s layout is failing, and can also animate between a minimum and maximum width to help visualize your design in realtime. This allows you to discard out-dated device sizes as your breakpoints for your media queries and use the content itself as a guide, fulfilling a richer, better experience.',
                       thumb: nil,
                       image: nil
                   }
  ])


Portfolio.create([
                 {
                     name: 'My New KY Home',
                     url: 'http://www.mynewkyhome.com/',
                     description: 'Powered by and with a centralized database for multiple individual Realtor&reg; agents and real estate companies, and in turn powered each client\'s respective individual website as well. AJAX heavy to allow sorting, searching, pagination, and multiple views (via modal dialogs). Moderate usage of cookies to keep persistent sorts and search settings saved. Massive custom backend to manage CRUD operations with unique client logins to allow unlimited image uploads, very customizable feature selections within an \'inventory\' of real estate listings that could be assigned/maintained by agency or by agent or both.',
                     thumb: nil
                 },
                 {
                     name: 'Arnold\'s Coffee',
                     url: 'http://www.arnoldscoffee.com/',
                     description: 'Custom ecommerce site based off a built-from-scratch ecommerce system that allowed for variations of coffee categories, grinds, caf/decaf, bag sizes, and frequent sales pricing. Ecommerce system flexible enough to be placed within a site not originally designed with it in mind. Handled payment gateways, a flat shipping fee, appropriate sales taxes, inventory management among other things.',
                     thumb: nil
                 },
                 {
                     name: 'Communicare',
                     url: 'http://www.communicare.org/',
                     description: 'Communicare is an older site I helped do most of the front-end development on. I was given a design and a homepage and created most secondary pages and all coded all ancillary content. I also created an custom jobs listing that sortable/searchable by facility, department, date, and text that could be updated by the client with a CRUD interface in their admin or via uploading a CSV file. They have since stopped using the jobs listing on their website.',
                     thumb: nil
                 },
                 {
                     name: 'Dawn Bland',
                     url: 'http://www.dawnbland.com/',
                     description: 'Dawn Bland is a fitness trainer and sells monthly memberships to watch online videos. I programmed a monthly recurring subscription, first for PayPal, and later for Authorize.net. These videos could be loaded via flash or played in a manner similar to the HTML 5 video playerback methods, but this was coded before HTML5 was used much. Later on the client also added a /store/ to the website to sell tangible goods and downloadable videos (to get the file as opposed to streaming). I coded much of the front-end as well.',
                     thumb: nil
                 },
                 {
                     name: 'Roundstone Native Seed',
                     url: 'https://www.roundstoneseed.com/',
                     description: 'Another customized ecommerce system that allowed for wholly different product types (actually requiring separate database tables) to keep track of their mixes and seeds, many of which could be bought as a unit, by the ounce, or by the pound. Furthermore customers were allowed to create their own seed mixtures choosing among a variety of seeds and different weights, and then order them in various quantities. Seeds were sortable and searchable by region, price, type, and various other criteria, and virtually all of the information was loaded in tooltips and modal windows to make the shopping experience easier than navigation what otherwise would have been dozens of pages for even a relatively simple checkout.',
                     thumb: nil
                 },
                 {
                     name: 'Hardin County Schools PAC',
                     url: 'http://thepac.net/',
                     description: 'The PAC sold tickets online with a precise number of tickets available in the various sections of the facility, each at different prices depending on the show date, time, seating section, and depending on if the show was primarily for schools or open to the public. It also allowed patrons to fill out a multi page form to rent the facility for their own plays or other theatrical acts, and this in turn fed a dynamically created interactive PDF that was used for contracts and was supported by a detailed admin section for the PAC to edit, approve, deny, re-schedule, search, and duplicate all such applications. The site also supported various other small features for patron feedback, surveys, schedules, requests; a lot of form-work and validation. While I was heavily occupied on three of their yearly redesigns on both the front-end and the back-end (and indeed rewrote the facility rental sections of the site from scratch for a more streamlined experience), I did not do much front-end work on their latest design.',
                     thumb: nil
                 },
                 {
                     name: 'Tri-State Healthcare I.T. Conference',
                     url: 'http://www.tri-state-health-it.com/',
                     description: 'A custom email system was built for the \'HIT\' Conference that allowed various templates and could send to both email addresses and as SMS to mobile phones. They also supported a registration & survey that were associated together to keep track of potential prize give-a-ways for registrants who registered early and filled out the surveys afterwards.',
                     thumb: nil
                 }
  ])
