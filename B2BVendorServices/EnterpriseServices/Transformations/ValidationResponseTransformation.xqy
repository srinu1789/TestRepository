xquery version "2004-draft";
(:: pragma bea:global-element-parameter parameter="$validationResponse1" element="ns0:validationResponse" location="../../SpringFarmServices/xsd/validation.xsd" ::)
(:: pragma bea:global-element-return element="ns0:validationResponse" location="../xsd/validation.xsd" ::)

declare namespace ns0 = "http://www.moneygram.com/Validation10";
declare namespace xf = "http://tempuri.org/B2BVendorServices/EnterpriseServices/Transformations/ValidationResponseTransformation/";

declare function xf:ValidationResponseTransformation($validationResponse1 as element(ns0:validationResponse))
    as element(ns0:validationResponse) {
        <ns0:validationResponse>
            <ns0:valid>{ data($validationResponse1/ns0:valid) }</ns0:valid>
            {
                for $responseCode in $validationResponse1/ns0:responseCode
                return
                    <ns0:responseCode>{ data($responseCode) }</ns0:responseCode>
            }
            {
                for $responseMessage in $validationResponse1/ns0:responseMessage
                return
                    <ns0:responseMessage>{ data($responseMessage) }</ns0:responseMessage>
            }
        </ns0:validationResponse>
};

declare variable $validationResponse1 as element(ns0:validationResponse) external;

xf:ValidationResponseTransformation($validationResponse1)