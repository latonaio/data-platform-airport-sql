CREATE TABLE `data_platform_airport_airway_data`
(
  `AirPort`                          int(16) NOT NULL,
  `Airway`                           int(16) NOT NULL,
  `ValidityStartDate`                date NOT NULL,
  `ValidityEndDate`                  date NOT NULL,
  `CreationDate`                     date NOT NULL,
  `CreationTime`                     time NOT NULL,
  `LastChangeDate`                   date NOT NULL,
  `LastChangeTime`                   time NOT NULL,
  `CreateUser`                       int(12) NOT NULL,
  `LastChangeUser`                   int(12) NOT NULL,
  `IsReleased`                       tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`              tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`AirPort`, `Airway`),

    CONSTRAINT `DPFMPortAirwayData_fk` FOREIGN KEY (`AirPort`) REFERENCES `data_platform_airport_header_data` (`AirPort`),
    CONSTRAINT `DPFMPortAirwayDataAirway_fk` FOREIGN KEY (`Airway`) REFERENCES `data_platform_air_way_header_data` (`Airway`),
    CONSTRAINT `DPFMPortAirwayDataCreateUser_fk` FOREIGN KEY (`CreateUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMPortAirwayDataLastChangeUser_fk` FOREIGN KEY (`LastChangeUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
