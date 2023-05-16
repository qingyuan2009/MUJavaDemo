namespace sap.ui.mu;
using { managed } from '@sap/cds/common';

  entity MarketUnits : managed {
    key ID      : UUID  @(Core.Computed : true);
    name        : String(100);
    scenarios   : String(30);
    prodHier    : String;
    dc          : Association to DistributionCenters;   
    store       : Association to Stores;    
  }

  entity DistributionCenters : managed {
    key ID      : UUID  @(Core.Computed : true);
    name        : String;  
    address     : String;
    city        : String;
    region      : String;
    country     : String;
  }

  entity Stores : managed {
    key ID      : UUID  @(Core.Computed : true);
    name        : String;  
    address     : String;
    city        : String;
    region      : String;
    country     : String;
  }

  