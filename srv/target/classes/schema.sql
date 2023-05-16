
DROP VIEW IF EXISTS MUService_DraftAdministrativeData;
DROP VIEW IF EXISTS MUService_Stores;
DROP VIEW IF EXISTS MUService_DistributionCenters;
DROP VIEW IF EXISTS MUService_MarketUnits;
DROP TABLE IF EXISTS MUService_Stores_drafts;
DROP TABLE IF EXISTS MUService_DistributionCenters_drafts;
DROP TABLE IF EXISTS MUService_MarketUnits_drafts;
DROP TABLE IF EXISTS DRAFT_DraftAdministrativeData;
DROP TABLE IF EXISTS sap_ui_mu_Stores;
DROP TABLE IF EXISTS sap_ui_mu_DistributionCenters;
DROP TABLE IF EXISTS sap_ui_mu_MarketUnits;
DROP table if exists cds_Model;

CREATE TABLE sap_ui_mu_MarketUnits (
  createdAt TIMESTAMP(7),
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP(7),
  modifiedBy NVARCHAR(255),
  ID NVARCHAR(36) NOT NULL,
  name NVARCHAR(100),
  scenarios NVARCHAR(30),
  prodHier NVARCHAR(5000),
  dc_ID NVARCHAR(36),
  store_ID NVARCHAR(36),
  PRIMARY KEY(ID)
); 

CREATE TABLE sap_ui_mu_DistributionCenters (
  createdAt TIMESTAMP(7),
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP(7),
  modifiedBy NVARCHAR(255),
  ID NVARCHAR(36) NOT NULL,
  name NVARCHAR(5000),
  address NVARCHAR(5000),
  city NVARCHAR(5000),
  region NVARCHAR(5000),
  country NVARCHAR(5000),
  PRIMARY KEY(ID)
); 

CREATE TABLE sap_ui_mu_Stores (
  createdAt TIMESTAMP(7),
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP(7),
  modifiedBy NVARCHAR(255),
  ID NVARCHAR(36) NOT NULL,
  name NVARCHAR(5000),
  address NVARCHAR(5000),
  city NVARCHAR(5000),
  region NVARCHAR(5000),
  country NVARCHAR(5000),
  PRIMARY KEY(ID)
); 

CREATE TABLE DRAFT_DraftAdministrativeData (
  DraftUUID NVARCHAR(36) NOT NULL,
  CreationDateTime TIMESTAMP(7),
  CreatedByUser NVARCHAR(256),
  DraftIsCreatedByMe BOOLEAN,
  LastChangeDateTime TIMESTAMP(7),
  LastChangedByUser NVARCHAR(256),
  InProcessByUser NVARCHAR(256),
  DraftIsProcessedByMe BOOLEAN,
  PRIMARY KEY(DraftUUID)
); 

CREATE TABLE MUService_MarketUnits_drafts (
  createdAt TIMESTAMP(7) NULL,
  createdBy NVARCHAR(255) NULL,
  modifiedAt TIMESTAMP(7) NULL,
  modifiedBy NVARCHAR(255) NULL,
  ID NVARCHAR(36) NOT NULL,
  name NVARCHAR(100) NULL,
  scenarios NVARCHAR(30) NULL,
  prodHier NVARCHAR(5000) NULL,
  dc_ID NVARCHAR(36) NULL,
  store_ID NVARCHAR(36) NULL,
  IsActiveEntity BOOLEAN,
  HasActiveEntity BOOLEAN,
  HasDraftEntity BOOLEAN,
  DraftAdministrativeData_DraftUUID NVARCHAR(36) NOT NULL,
  PRIMARY KEY(ID)
); 

CREATE TABLE MUService_DistributionCenters_drafts (
  createdAt TIMESTAMP(7) NULL,
  createdBy NVARCHAR(255) NULL,
  modifiedAt TIMESTAMP(7) NULL,
  modifiedBy NVARCHAR(255) NULL,
  ID NVARCHAR(36) NOT NULL,
  name NVARCHAR(5000) NULL,
  address NVARCHAR(5000) NULL,
  city NVARCHAR(5000) NULL,
  region NVARCHAR(5000) NULL,
  country NVARCHAR(5000) NULL,
  IsActiveEntity BOOLEAN,
  HasActiveEntity BOOLEAN,
  HasDraftEntity BOOLEAN,
  DraftAdministrativeData_DraftUUID NVARCHAR(36) NOT NULL,
  PRIMARY KEY(ID)
); 

CREATE TABLE MUService_Stores_drafts (
  createdAt TIMESTAMP(7) NULL,
  createdBy NVARCHAR(255) NULL,
  modifiedAt TIMESTAMP(7) NULL,
  modifiedBy NVARCHAR(255) NULL,
  ID NVARCHAR(36) NOT NULL,
  name NVARCHAR(5000) NULL,
  address NVARCHAR(5000) NULL,
  city NVARCHAR(5000) NULL,
  region NVARCHAR(5000) NULL,
  country NVARCHAR(5000) NULL,
  IsActiveEntity BOOLEAN,
  HasActiveEntity BOOLEAN,
  HasDraftEntity BOOLEAN,
  DraftAdministrativeData_DraftUUID NVARCHAR(36) NOT NULL,
  PRIMARY KEY(ID)
); 

CREATE VIEW MUService_MarketUnits AS SELECT
  MarketUnits_0.createdAt,
  MarketUnits_0.createdBy,
  MarketUnits_0.modifiedAt,
  MarketUnits_0.modifiedBy,
  MarketUnits_0.ID,
  MarketUnits_0.name,
  MarketUnits_0.scenarios,
  MarketUnits_0.prodHier,
  MarketUnits_0.dc_ID,
  MarketUnits_0.store_ID
FROM sap_ui_mu_MarketUnits AS MarketUnits_0; 

CREATE VIEW MUService_DistributionCenters AS SELECT
  DistributionCenters_0.createdAt,
  DistributionCenters_0.createdBy,
  DistributionCenters_0.modifiedAt,
  DistributionCenters_0.modifiedBy,
  DistributionCenters_0.ID,
  DistributionCenters_0.name,
  DistributionCenters_0.address,
  DistributionCenters_0.city,
  DistributionCenters_0.region,
  DistributionCenters_0.country
FROM sap_ui_mu_DistributionCenters AS DistributionCenters_0; 

CREATE VIEW MUService_Stores AS SELECT
  Stores_0.createdAt,
  Stores_0.createdBy,
  Stores_0.modifiedAt,
  Stores_0.modifiedBy,
  Stores_0.ID,
  Stores_0.name,
  Stores_0.address,
  Stores_0.city,
  Stores_0.region,
  Stores_0.country
FROM sap_ui_mu_Stores AS Stores_0; 

CREATE VIEW MUService_DraftAdministrativeData AS SELECT
  DraftAdministrativeData.DraftUUID,
  DraftAdministrativeData.CreationDateTime,
  DraftAdministrativeData.CreatedByUser,
  DraftAdministrativeData.DraftIsCreatedByMe,
  DraftAdministrativeData.LastChangeDateTime,
  DraftAdministrativeData.LastChangedByUser,
  DraftAdministrativeData.InProcessByUser,
  DraftAdministrativeData.DraftIsProcessedByMe
FROM DRAFT_DraftAdministrativeData AS DraftAdministrativeData; 

