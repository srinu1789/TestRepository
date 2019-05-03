xquery version "2004-draft" encoding "Cp1252";
(:: pragma bea:global-element-parameter parameter="$moneyTransferResponse1" element="ns0:moneyTransferResponse" location="../../SpringFarmServices/xsd/MoneyTransfer.xsd" ::)
(:: pragma bea:global-element-return element="ns0:moneyTransferResponse" location="../xsd/MoneyTransfer.xsd" ::)

declare namespace xf = "http://tempuri.org/B2BVendorServices/EnterpriseServices/Transformations/MoneyTransferResponseTransformation/";
declare namespace ns0 = "http://www.moneygram.com/DSS40";
declare namespace xsi = "http://www.w3.org/2001/XMLSchema-instance";

declare function xf:MoneyTransferResponseTransformation($moneyTransferResponse1 as element(ns0:moneyTransferResponse))
    as element(ns0:moneyTransferResponse) {
         <ns0:moneyTransferResponse xsi:type="tbd" >
            {
                for $childnode in $moneyTransferResponse1/node()
                return
                
                	element{expanded-QName ("http://www.moneygram.com/DSS40",local-name($childnode))}
					{ ($childnode/text()) }
                     
            }
        </ns0:moneyTransferResponse>
};

declare variable $moneyTransferResponse1 as element(ns0:moneyTransferResponse) external;

xf:MoneyTransferResponseTransformation($moneyTransferResponse1)