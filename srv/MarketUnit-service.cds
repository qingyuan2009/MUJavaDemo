using {sap.ui.mu as my} from '../db/index';

@path: 'service/mu'
service MUService @(requires: 'any'){

  entity MarketUnits as projection on my.MarketUnits;
  annotate MarketUnits with @odata.draft.enabled;  

  entity DistributionCenters as projection on my.DistributionCenters;
  annotate DistributionCenters with @odata.draft.enabled;

  entity Stores as projection on my.Stores;
  annotate Stores with @odata.draft.enabled;

   annotate Reviews with @restrict : [
        {
            grant : 'READ',
            to : 'any'
        },
        {
            grant : 'CREATE',
            to : 'authenticated-user'
        }
    ];
  
}
