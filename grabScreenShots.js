var attempted = 0,
    projects = [
        {
            name: 'resizive',
            url: 'http://resizive.com',
            render: resiziveRender
        },
        {
            name: 'cards',
            url: 'http://projects.gingerboydev.com/remember-the-ginger/',
            render: cardsRender
        },
        {
            name: 'minesweeper',
            url: 'http://projects.gingerboydev.com/minesweeper/',
            render: minesweeperRender
        },
        {
            name: 'randle',
            url: 'http://projects.gingerboydev.com/randle/',
            render: basicRender
        },
        {
            name: 'fontbeast',
            url: 'http://projects.gingerboydev.com/fontbeast/',
            render: basicRender
        }
    ],
    portfolios = [
        {
            name: 'glyde',
            url : 'http://glyde.com',
            render: basicRender
        },
        {
            name: 'glyde-mobile',
            url : 'http://m.glyde.com',
            render: mobileRender
        },
        {
            name: 'sellsmart',
            url : 'http://glyde.com/sell-smart',
            render: basicRender
        },
        {
            name: 'mnkh',
            url: 'http://www.mynewkyhome.com/',
            render: basicRender
        },
        {
            name: 'arnoldscoffee',
            url: 'http://www.arnoldscoffee.com/',
            render: basicRender
        },
        {
            name: 'dawnbland',
            url: 'http://www.dawnbland.com/',
            render: basicRender
        },
        {
            name: 'roundstone',
            url: 'https://www.roundstoneseed.com/',
            render: basicRender
        },
        {
            name: 'pac',
            url: 'http://thepac.net/',
            render: basicRender
        },
        {
            name: 'tri-state-hit',
            url: 'http://www.tri-state-health-it.com/',
            render: basicRender
        }
    ],
    total = projects.length + portfolios.length;

iterator(projects, "projects");
iterator(portfolios, "portfolios");

function iterator(sites, folder) {
    var i = 0,
        max = sites.length,
        s;
    for (i=0; i < max; i+=1) {
        s = sites[i];
        s.render(s.name, s.url, folder);
    }
}

function basicRender(name, url, folder) {
    var page = require('webpage').create();
    page.viewportSize = { width: 1024, height: 768 };
    page.clipRect = { top: 0, left: 0, width: 1024, height: 768 };
    page.open(url, function () {
        setTimeout(function() {
            screenGrab(name, folder, page);
        }, 250);
    });
}

function mobileRender(name, url, folder) {
    var page = require('webpage').create();
    page.viewportSize = { width: 320, height: 640 };
    page.clipRect = { top: 0, left: 0, width: 320, height: 640 };
    page.open(url, function () {
        setTimeout(function() {
            screenGrab(name, folder, page);
        }, 250);
    });
}

function resiziveRender(name, url, folder) {
    var page = require('webpage').create();
    page.viewportSize = { width: 1024, height: 768 };
    page.clipRect = { top: 0, left: 0, width: 1024, height: 768 };
    page.open(url, function () {
        page.evaluate(function() {
            document.querySelector('.url-entry').value = "http://bradleystaples.herokuapp.com/contact";
            document.querySelector('.button-start').click();
            setTimeout(function() {
                document.querySelector('.button-pause').click();
            }, 2000);
        });
        setTimeout(function() {
            screenGrab(name, folder, page);
        }, 3000);
    });
}

function cardsRender(name, url, folder) {
    var page = require('webpage').create();
    page.viewportSize = { width: 1024, height: 768 };
    page.clipRect = { top: 0, left: 0, width: 1024, height: 768 };
    page.open(url, function () {
        page.evaluate(function() {
            document.querySelector('.button').click();
        });
        setTimeout(function() {
            screenGrab(name, folder, page);
        }, 700);
    });
}

function minesweeperRender(name, url, folder) {
    var page = require('webpage').create();
    page.viewportSize = { width: 1024, height: 768 };
    page.clipRect = { top: 0, left: 0, width: 1024, height: 768 };
    page.open(url, function () {
        page.evaluate(function() {
            document.querySelector('.button.start').click();
            setTimeout(function() {
                var btn = document.querySelector('.button.validate');
                if (btn) {
                    btn.parentNode.removeChild(btn);
                }
                document.querySelector('.button.modal-continue').click();
            }, 300);
        });
        setTimeout(function() {
            screenGrab(name, folder, page);
        }, 1500);
    });
}

function screenGrab(name, folder, page) {
    page.render('app/assets/images/' + folder + '/' + name + '.jpg');
    page.release();
    console.log('just finished: ' + folder + ' (' + name + ')');
    attempted += 1;
    if (attempted === total) {
        phantom.exit();
    }
}



