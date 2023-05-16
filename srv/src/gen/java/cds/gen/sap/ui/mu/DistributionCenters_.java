package cds.gen.sap.ui.mu;

import com.sap.cds.ql.CdsName;
import com.sap.cds.ql.ElementRef;
import com.sap.cds.ql.StructuredType;
import java.lang.String;
import java.time.Instant;
import javax.annotation.processing.Generated;

/**
 * Aspect to capture changes by user and name
 *
 * See https://cap.cloud.sap/docs/cds/common#aspect-managed
 */
@CdsName("sap.ui.mu.DistributionCenters")
@Generated(
    value = "cds-maven-plugin",
    date = "2023-05-16T02:14:08.299064500Z",
    comments = "com.sap.cds:cds-maven-plugin:1.34.1 / com.sap.cds:cds4j-api:1.38.1"
)
public interface DistributionCenters_ extends StructuredType<DistributionCenters_> {
  String CDS_NAME = "sap.ui.mu.DistributionCenters";

  ElementRef<Instant> createdAt();

  ElementRef<String> createdBy();

  ElementRef<Instant> modifiedAt();

  ElementRef<String> modifiedBy();

  ElementRef<String> ID();

  ElementRef<String> name();

  ElementRef<String> address();

  ElementRef<String> city();

  ElementRef<String> region();

  ElementRef<String> country();
}
