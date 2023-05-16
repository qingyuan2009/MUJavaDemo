package cds.gen.sap.ui.mu;

import com.sap.cds.CdsData;
import com.sap.cds.Struct;
import com.sap.cds.ql.CdsName;
import java.lang.String;
import java.time.Instant;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.processing.Generated;

/**
 * Aspect to capture changes by user and name
 *
 * See https://cap.cloud.sap/docs/cds/common#aspect-managed
 */
@CdsName("sap.ui.mu.MarketUnits")
@Generated(
    value = "cds-maven-plugin",
    date = "2023-05-16T02:14:08.299064500Z",
    comments = "com.sap.cds:cds-maven-plugin:1.34.1 / com.sap.cds:cds4j-api:1.38.1"
)
public interface MarketUnits extends CdsData {
  String CREATED_AT = "createdAt";

  String CREATED_BY = "createdBy";

  String MODIFIED_AT = "modifiedAt";

  String MODIFIED_BY = "modifiedBy";

  String ID = "ID";

  String NAME = "name";

  String SCENARIOS = "scenarios";

  String PROD_HIER = "prodHier";

  String DC = "dc";

  String DC_ID = "dc_ID";

  String STORE = "store";

  String STORE_ID = "store_ID";

  Instant getCreatedAt();

  void setCreatedAt(Instant createdAt);

  /**
   * Canonical user ID
   */
  String getCreatedBy();

  /**
   * Canonical user ID
   */
  void setCreatedBy(String createdBy);

  Instant getModifiedAt();

  void setModifiedAt(Instant modifiedAt);

  /**
   * Canonical user ID
   */
  String getModifiedBy();

  /**
   * Canonical user ID
   */
  void setModifiedBy(String modifiedBy);

  @CdsName(ID)
  String getId();

  @CdsName(ID)
  void setId(String id);

  String getName();

  void setName(String name);

  String getScenarios();

  void setScenarios(String scenarios);

  String getProdHier();

  void setProdHier(String prodHier);

  DistributionCenters getDc();

  void setDc(Map<String, ?> dc);

  @CdsName(DC_ID)
  String getDcId();

  @CdsName(DC_ID)
  void setDcId(String dcId);

  Stores getStore();

  void setStore(Map<String, ?> store);

  @CdsName(STORE_ID)
  String getStoreId();

  @CdsName(STORE_ID)
  void setStoreId(String storeId);

  MarketUnits_ ref();

  static MarketUnits create() {
    return Struct.create(MarketUnits.class);
  }

  static MarketUnits create(String id) {
    Map<String, Object> keys = new HashMap<>();
    keys.put(ID, id);
    return Struct.access(keys).as(MarketUnits.class);
  }
}
