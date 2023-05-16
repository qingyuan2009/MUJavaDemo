package cds.gen.draft;

import com.sap.cds.ql.CdsName;
import com.sap.cds.ql.ElementRef;
import com.sap.cds.ql.StructuredType;
import java.lang.Boolean;
import java.lang.String;
import java.time.Instant;
import javax.annotation.processing.Generated;

@CdsName("DRAFT.DraftAdministrativeData")
@Generated(
    value = "cds-maven-plugin",
    date = "2023-05-16T02:14:08.299064500Z",
    comments = "com.sap.cds:cds-maven-plugin:1.34.1 / com.sap.cds:cds4j-api:1.38.1"
)
public interface DraftAdministrativeData_ extends StructuredType<DraftAdministrativeData_> {
  String CDS_NAME = "DRAFT.DraftAdministrativeData";

  ElementRef<String> DraftUUID();

  ElementRef<Instant> CreationDateTime();

  ElementRef<String> CreatedByUser();

  ElementRef<Boolean> DraftIsCreatedByMe();

  ElementRef<Instant> LastChangeDateTime();

  ElementRef<String> LastChangedByUser();

  ElementRef<String> InProcessByUser();

  ElementRef<Boolean> DraftIsProcessedByMe();
}
