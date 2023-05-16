package cds.gen.sap.ui.mu;

import com.sap.cds.ql.CdsName;
import java.lang.Class;
import java.lang.String;
import javax.annotation.processing.Generated;

@Generated(
    value = "cds-maven-plugin",
    date = "2023-05-16T02:14:08.299064500Z",
    comments = "com.sap.cds:cds-maven-plugin:1.34.1 / com.sap.cds:cds4j-api:1.38.1"
)
@CdsName("sap.ui.mu")
public interface Mu_ {
  String CDS_NAME = "sap.ui.mu";

  Class<Stores_> STORES = Stores_.class;

  Class<DistributionCenters_> DISTRIBUTION_CENTERS = DistributionCenters_.class;

  Class<MarketUnits_> MARKET_UNITS = MarketUnits_.class;
}
