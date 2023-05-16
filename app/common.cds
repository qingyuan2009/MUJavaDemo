//using MUService from '../srv/MarketUnit-service';
using {sap.ui.mu as my} from '../db/index';
////////////////////////////////////////////////////////////////////////////
//
//	Market Unit List page
//
annotate my.MarketUnits with {
	name        @title: 'Name';
	scenarios   @title: 'Scenarios';
	prodHier    @title: 'Product Hierarchy';
	dc          @title: 'Distribution Center';
	store       @title: 'Store';
}

annotate my.DistributionCenters with {
	ID @(
		UI.Hidden,
		Common: {
		Text: name
		}
	);
	name        @title: 'Name';
	city        @title: 'City';
	region      @title: 'Region';
	country     @title: 'Country';
}

annotate my.Stores with {
	ID @(
		UI.Hidden,
		Common: {
		Text: name
		}
	);
	name        @title: 'Name';
	city        @title: 'City';
	region      @title: 'Region';
	country     @title: 'Country';
}

annotate my.MarketUnits with @(
	UI: {		
		HeaderInfo: {
			TypeName: 'Market Unit',
			TypeNamePlural: 'Market Units'			
		},			
		SelectionFields: [scenarios],
		LineItem: [
			{Value: name},
			{Value: scenarios},
			{Value: prodHier},
			{
                Value: dc_ID,
                ![@HTML5.CssDefaults] : {width : '100%'}
            },
			{
                Value: store_ID,
                ![@HTML5.CssDefaults] : {width : '100%'}
            }			
		],
		Facets: [
			{$Type: 'UI.ReferenceFacet', Label: 'Main', Target: '@UI.FieldGroup#Main'}
		],
		FieldGroup#Main: {
			Data: [
				{Value: name},
				{Value: scenarios},
				{Value: prodHier},
				{Value: dc_ID},
				{Value: store_ID}
				/*
				{
					Value: dc,
					Criticality: criticality
				},
				{
					Value: store,
					Criticality: criticality
				}
				*/
			]
		}
		
	},
) {

};


annotate my.MarketUnits with {
	dc @(
		Common: {
			//show text, not id for mitigation in the context of risks					
			Text: dc.name  , TextArrangement: #TextOnly,
			ValueList: {
				Label: 'DistributionCenters',
				CollectionPath: 'DistributionCenters',
				Parameters: [
					{ $Type: 'Common.ValueListParameterInOut',
						LocalDataProperty: dc_ID,
						ValueListProperty: 'ID'
					},
					{ $Type: 'Common.ValueListParameterDisplayOnly',
						ValueListProperty: 'name'
					}
				]
			}
			
		}
	);
	store @(
		Common: {
			//show text, not id for mitigation in the context of risks			
			Text: store.name  , TextArrangement: #TextOnly,
			ValueList: {
				Label: 'Stores',
				CollectionPath: 'Stores',
				Parameters: [
					{ $Type: 'Common.ValueListParameterInOut',
						LocalDataProperty: store_ID,
						ValueListProperty: 'ID'
					},
					{ $Type: 'Common.ValueListParameterDisplayOnly',
						ValueListProperty: 'name'
					}
				]
			}			
		}
	);
}



