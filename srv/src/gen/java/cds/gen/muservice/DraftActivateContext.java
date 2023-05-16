package cds.gen.muservice;

import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.services.EventContext;
import com.sap.cds.services.EventName;
import java.lang.String;
import javax.annotation.processing.Generated;

@EventName("draftActivate")
@Generated(
    value = "cds-maven-plugin",
    date = "2023-05-16T02:14:08.299064500Z",
    comments = "com.sap.cds:cds-maven-plugin:1.34.1 / com.sap.cds:cds4j-api:1.38.1"
)
public interface DraftActivateContext extends EventContext {
  String CDS_NAME = "draftActivate";

  CqnSelect getCqn();

  void setCqn(CqnSelect select);

  static DraftActivateContext create() {
    return EventContext.create(DraftActivateContext.class, "MUService.Stores");
  }

  void setResult(Stores result);

  Stores getResult();

  static DraftActivateContext create(String entityName) {
    return EventContext.create(DraftActivateContext.class, entityName);
  }
}
