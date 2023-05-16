package cds.gen.sap.common;

import com.sap.cds.ql.CdsName;
import java.lang.Class;
import java.lang.String;
import javax.annotation.processing.Generated;

@Generated(
    value = "cds-maven-plugin",
    date = "2023-05-16T02:14:08.299064500Z",
    comments = "com.sap.cds:cds-maven-plugin:1.34.1 / com.sap.cds:cds4j-api:1.38.1"
)
@CdsName("sap.common")
public interface Common_ {
  String CDS_NAME = "sap.common";

  Class<Languages_> LANGUAGES = Languages_.class;

  Class<CountriesTexts_> COUNTRIES_TEXTS = CountriesTexts_.class;

  Class<Currencies_> CURRENCIES = Currencies_.class;

  Class<LanguagesTexts_> LANGUAGES_TEXTS = LanguagesTexts_.class;

  Class<CurrenciesTexts_> CURRENCIES_TEXTS = CurrenciesTexts_.class;

  Class<Countries_> COUNTRIES = Countries_.class;
}
