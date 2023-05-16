sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'mu/mu/test/integration/FirstJourney',
		'mu/mu/test/integration/pages/MarketUnitsList',
		'mu/mu/test/integration/pages/MarketUnitsObjectPage'
    ],
    function(JourneyRunner, opaJourney, MarketUnitsList, MarketUnitsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('mu/mu') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMarketUnitsList: MarketUnitsList,
					onTheMarketUnitsObjectPage: MarketUnitsObjectPage
                }
            },
            opaJourney.run
        );
    }
);