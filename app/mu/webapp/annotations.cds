using MUService from '../../../srv/MarketUnit-service';
////////////////////////////////////////////////////////////////////////////
//
//	Market Unit Object Page
//
annotate MUService.MarketUnits with @(UI : {    
    HeaderInfo : {
        TypeName : '{i18n>MarketUnit}',
        TypeNamePlural : '{i18n>MarketUnits}',
        Title : {Value : name},
        Description : {Value : name}
    },   
    Identification : [
        {Value : name},
        {
            $Type : 'UI.DataFieldForAction',
            Label : '{i18n>AddReview}',
            Action : 'MUService.addReview'
        }
    ],
    PresentationVariant : {
        Text : 'Default',
        SortOrder : [{Property : name}],
        Visualizations : ['@UI.LineItem']
    },
    SelectionFields : [
        name
    ],
    HeaderFacets : [
        /*
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.DataPoint#rating'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.DataPoint#price'
        }
        */
    ],
    LineItem : [
        {Value : name},
        {
            Value : scenarios,
            Label : '{i18n>Scenarios}'
        },
        {
            Value : prodHier,
            Label : '{i18n>ProductHierarchy}'
        },
        {
            Value : dc_ID,
            Label : '{i18n>DistributionCenter}'
        },
        {
            Value : store_ID,
            Label : '{i18n>Store}'
        }
        /*        
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.DataPoint#rating',
            Label : '{i18n>Rating}'
        },
        {Value : price},
        {
            $Type : 'UI.DataFieldForAnnotation',
            Label : '{i18n>AddReview}',
            Target : '@UI.FieldGroup#AddReview'
        }
        */
    ],    
    Facets : [
        {
            $Type   : 'UI.CollectionFacet',
            ID      : 'collectionBasicInformation',
            Label   : '{i18n>BasicInformation}',
            Facets  : [
                {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : '@UI.FieldGroup#BasicInformation',
                    ID      : 'FieldGroupBasicInformation',
                    Label   : '{i18n>BasicInformation}',
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Target : '@UI.FieldGroup#Scenarios',
                    ID : 'FieldGroupScenarios',
                    Label : '{i18n>Scenarios}',                    
                },
                {
                    $Type : 'UI.ReferenceFacet',
                    Target : '@UI.FieldGroup#ProductHierarchy',
                    ID : 'FieldGroupProductHierarchy',
                    Label : '{i18n>ProductHierarchy}',                    
                }             
            ],
        },

        /*
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>BasicInformation}',
            Target : '@UI.FieldGroup#BasicInformation'
        },
        */
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Locations}',
            Target : '@UI.FieldGroup#Locations'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Responsibilities}',
            Target : '@UI.FieldGroup#Responsibilities'
        },
       
        /*
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Responsibilities}',
            Target : 'reviews/@UI.LineItem'
        }
        */
    ],
    /*
    FieldGroup #AddReview : {Data : [{
        $Type : 'UI.DataFieldForAction',
        Label : '{i18n>AddReview}',
        Action : 'CatalogService.addReview',
        InvocationGrouping : #ChangeSet
    }, ]},
    */
    FieldGroup #BasicInformation : {Data : [
        {Value : name},
        //{Value : scenarios},
        //{Value : prodHier},
        {Value : dc_ID},
        {Value : store_ID}        
    ]},
    FieldGroup #Scenarios : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : scenarios
            },
        ]        
    },
    FieldGroup #ProductHierarchy : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : prodHier
            },
        ]        
    },
    
    FieldGroup #Locations : {Data : [{Value : dc.address}]},
    FieldGroup #Responsibilities : {Data : [{Value : dc.address}]}
    /*
    DataPoint #stock : {
        Value : stock,
        Title : '{i18n>Stock}'
    },
    DataPoint #price : {
        Value : price,
        Title : '{i18n>Price}'
    },
    DataPoint #rating : {
        Value : rating,
        Title : '{i18n>Rating}',
        Visualization : #Rating,
        MinimumValue : 0,
        MaximumValue : 5,
        TargetValue : 5
    }
    */
   
}) {
    //@Measures.ISOCurrency : currency_code
    //price
};

/*
annotate CatalogService.Books.texts with @(UI : {LineItem : [
    {Value : locale},
    {Value : title},
    {Value : descr}
]});
*/