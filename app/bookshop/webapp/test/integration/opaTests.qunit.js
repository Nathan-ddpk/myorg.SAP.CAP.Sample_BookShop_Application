sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'myorg/sap/cap/bookshop/ui/bookshop/test/integration/FirstJourney',
		'myorg/sap/cap/bookshop/ui/bookshop/test/integration/pages/BooksList',
		'myorg/sap/cap/bookshop/ui/bookshop/test/integration/pages/BooksObjectPage'
    ],
    function(JourneyRunner, opaJourney, BooksList, BooksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('myorg/sap/cap/bookshop/ui/bookshop') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBooksList: BooksList,
					onTheBooksObjectPage: BooksObjectPage
                }
            },
            opaJourney.run
        );
    }
);