package cds.gen.muservice;

import com.sap.cds.ql.CdsName;
import java.lang.Class;
import java.lang.String;
import javax.annotation.processing.Generated;

@Generated(
    value = "cds-maven-plugin",
    date = "2023-05-16T02:14:08.299064500Z",
    comments = "com.sap.cds:cds-maven-plugin:1.34.1 / com.sap.cds:cds4j-api:1.38.1"
)
@CdsName("MUService")
public interface MUService_ {
  String CDS_NAME = "MUService";

  Class<DistributionCenters_> DISTRIBUTION_CENTERS = DistributionCenters_.class;

  Class<DraftAdministrativeData_> DRAFT_ADMINISTRATIVE_DATA = DraftAdministrativeData_.class;

  Class<MarketUnits_> MARKET_UNITS = MarketUnits_.class;

  Class<Stores_> STORES = Stores_.class;
}
