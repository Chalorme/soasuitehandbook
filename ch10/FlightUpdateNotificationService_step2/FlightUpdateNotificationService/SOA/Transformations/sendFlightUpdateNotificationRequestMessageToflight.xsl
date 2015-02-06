<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:tns="http://spring.services.airport.saibot/"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns0="saibot.airport/services/flightupdatenotification"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 tns oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:reference="saibot.airport/data/reference" xmlns:common="saibot.airport/data/common"
                xmlns:flight="saibot.airport/data/flight" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:ns1="http://spring.services.airport.saibot/types" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/">
    <oracle-xsl-mapper:schema>
        <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
        <oracle-xsl-mapper:mapSources>
            <oracle-xsl-mapper:source type="XSD">
                <oracle-xsl-mapper:schema location="../Schemas/FlightUpdateNotificationService.xsd"/>
                <oracle-xsl-mapper:rootElement name="sendFlightUpdateNotificationRequestMessage"
                                               namespace="saibot.airport/services/flightupdatenotification"/>
            </oracle-xsl-mapper:source>
        </oracle-xsl-mapper:mapSources>
        <oracle-xsl-mapper:mapTargets>
            <oracle-xsl-mapper:target type="WSDL">
                <oracle-xsl-mapper:schema location="../WSDLs/Announcer.wsdl"/>
                <oracle-xsl-mapper:rootElement name="composeFlightStatusAnnouncement"
                                               namespace="http://spring.services.airport.saibot/"/>
            </oracle-xsl-mapper:target>
        </oracle-xsl-mapper:mapTargets>
        <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140119.0846.5239) AT [FRI APR 11 19:00:09 CEST 2014].-->
    </oracle-xsl-mapper:schema>
    <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
    <xsl:template match="/">
        <tns:composeFlightStatusAnnouncement>
            <arg0>
                <action>
                    <xsl:value-of select="/ns0:sendFlightUpdateNotificationRequestMessage/ns0:FlightStatus/flight:Action"/>
                </action>
                <carrier>
                    <xsl:value-of select="/ns0:sendFlightUpdateNotificationRequestMessage/ns0:Carrier"/>
                </carrier>
                <flightNumber>
                    <xsl:value-of select="/ns0:sendFlightUpdateNotificationRequestMessage/ns0:FlightNumber"/>
                </flightNumber>
                <gate>
                    <xsl:value-of select="/ns0:sendFlightUpdateNotificationRequestMessage/ns0:FlightStatus/flight:GateLocation/reference:Gate"/>
                </gate>
                <pier>
                    <xsl:value-of select="/ns0:sendFlightUpdateNotificationRequestMessage/ns0:FlightStatus/flight:GateLocation/reference:Pier"/>
                </pier>
                <status>
                    <xsl:value-of select="/ns0:sendFlightUpdateNotificationRequestMessage/ns0:FlightStatus/flight:Status"/>
                </status>
                <terminal>
                    <xsl:value-of select="/ns0:sendFlightUpdateNotificationRequestMessage/ns0:FlightStatus/flight:GateLocation/reference:Terminal"/>
                </terminal>
                <timestamp>
                    <xsl:value-of select="xp20:current-dateTime ( )"/>
                </timestamp>
            </arg0>
        </tns:composeFlightStatusAnnouncement>
    </xsl:template>
</xsl:stylesheet>
