var jqueryUrl = "http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js",
    attempted = 0,
    projects = [
        {name: 'resizive',      url: 'http://resizive.com'},
        {name: 'cards',         url: 'http://gingerboydev.com/myprojects/cards/'},
        {name: 'minesweeper',   url: 'http://localhost:3000/projects/minesweeper/'},
        {name: 'randle',        url: 'http://gingerboydev.com/myprojects/randle/'},
        {name: 'fontbeast',     url: 'http://gingerboydev.com/myprojects/fontbeast/'}
    ],
    portfolios = [
        {name: 'glyde',         url : 'http://glyde.com'},
        {name: 'glyde-mobile',  url : 'http://m.glyde.com'},
        {name: 'sellsmart',     url : 'http://glyde.com/sell-smart'},
        {name: 'mnkh',          url: 'http://www.mynewkyhome.com/'},
        {name: 'arnoldscoffee', url: 'http://www.arnoldscoffee.com/'},
        {name: 'communicare',   url: 'http://www.communicare.org/'},
        {name: 'dawnbland',     url: 'http://www.dawnbland.com/'},
        {name: 'roundstone',    url: 'https://www.roundstoneseed.com/'},
        {name: 'pac',           url: 'http://thepac.net/'},
        {name: 'tri-state-hit', url: 'http://www.tri-state-health-it.com/'}
    ],
    total = projects.length + portfolios.length;

iterator(projects, "projects");
iterator(portfolios, "portfolios");

function iterator(sites, folder) {
    var i = 0,
        max = sites.length;
    for (i=0; i < max; i+=1) {
        basicRender(sites[i].name, sites[i].url, folder);
    }
}

function basicRender(name, url, folder) {
    var page = require('webpage').create();
    page.viewportSize = { width: 1024, height: 768 };
    page.open(url, function () {
        screenGrab(name, folder, page);
    });
}

function screenGrab(name, folder, page) {
    page.render('app/assets/images/' + folder + '/' + name + '.png');
    page.release();
    console.log('just finished: ' + folder + ' (' + name + ')');
    attempted += 1;
    if (attempted === total) {
        phantom.exit();
    }
}



