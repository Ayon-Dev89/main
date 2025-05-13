sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/sap/bookstore/bookstore/test/integration/FirstJourney',
		'com/sap/bookstore/bookstore/test/integration/pages/BooksList',
		'com/sap/bookstore/bookstore/test/integration/pages/BooksObjectPage',
		'com/sap/bookstore/bookstore/test/integration/pages/ReviewsObjectPage'
    ],
    function(JourneyRunner, opaJourney, BooksList, BooksObjectPage, ReviewsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/sap/bookstore/bookstore') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBooksList: BooksList,
					onTheBooksObjectPage: BooksObjectPage,
					onTheReviewsObjectPage: ReviewsObjectPage
                }
            },
            opaJourney.run
        );
    }
);