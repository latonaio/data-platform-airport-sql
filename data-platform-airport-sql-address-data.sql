CREATE TABLE `data_platform_airport_address_data`
(
    `Airport`                 int(16) NOT NULL,
    `AddressID`               int(12) NOT NULL,
    `PostalCode`              varchar(10) DEFAULT NULL,
    `LocalSubRegion`          varchar(6) NOT NULL,
    `LocalRegion`             varchar(3) NOT NULL,
    `Country`                 varchar(3) NOT NULL,
    `GlobalRegion`            varchar(3) NOT NULL,
    `TimeZone`                varchar(3) NOT NULL,
    `District`                varchar(6) DEFAULT NULL,
    `StreetName`              varchar(200) DEFAULT NULL,
    `CityName`                varchar(200) DEFAULT NULL,
    `Building`                varchar(100) DEFAULT NULL,
    `Floor`                   int(4) DEFAULT NULL,
    `Room`                    int(8) DEFAULT NULL,
    `XCoordinate`             float(20) DEFAULT NULL,
    `YCoordinate`             float(20) DEFAULT NULL,
    `ZCoordinate`             float(20) DEFAULT NULL,
    `Site`                    int(16) DEFAULT NULL,
    
    PRIMARY KEY (`Airport`, `AddressID`),
    
    CONSTRAINT `DPFMAirportAddressData_fk` FOREIGN KEY (`Airport`) REFERENCES `data_platform_airport_header_data` (`Airport`),
    CONSTRAINT `DPFMAirportAddressDataAddressID_fk` FOREIGN KEY (`AddressID`) REFERENCES `data_platform_address_address_data` (`AddressID`),
    CONSTRAINT `DPFMAirportAddressDataPostalCode_fk` FOREIGN KEY (`PostalCode`, `Country`) REFERENCES `data_platform_postal_code_postal_code_data` (`PostalCode`, `Country`),
    CONSTRAINT `DPFMAirportAddressDataLocalSubRegion_fk` FOREIGN KEY (`LocalSubRegion`, `LocalRegion`, `Country`) REFERENCES `data_platform_local_region_local_sub_region_data` (`LocalSubRegion`, `LocalRegion`, `Country`),
    CONSTRAINT `DPFMAirportAddressDataLocalRegion_fk` FOREIGN KEY (`LocalRegion`, `Country`) REFERENCES `data_platform_local_region_local_region_data` (`LocalRegion`, `Country`),
    CONSTRAINT `DPFMAirportAddressDataCountry_fk` FOREIGN KEY (`Country`) REFERENCES `data_platform_country_country_data` (`Country`),
    CONSTRAINT `DPFMAirportAddressDataGlobalRegion_fk` FOREIGN KEY (`GlobalRegion`) REFERENCES `data_platform_global_region_global_region_data` (`GlobalRegion`),
    CONSTRAINT `DPFMAirportAddressDataTimeZone_fk` FOREIGN KEY (`TimeZone`) REFERENCES `data_platform_time_zone_time_zone_data` (`TimeZone`),
    CONSTRAINT `DPFMAirportAddressDataDistrict_fk` FOREIGN KEY (`District`, `Country`) REFERENCES `data_platform_district_district_data` (`District`, `Country`),
    CONSTRAINT `DPFMAirportAddressDataSite_fk` FOREIGN KEY (`Site`) REFERENCES `data_platform_site_header_data` (`Site`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
