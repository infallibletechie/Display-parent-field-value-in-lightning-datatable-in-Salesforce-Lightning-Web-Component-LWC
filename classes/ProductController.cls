public with sharing class ProductController {
    
    @AuraEnabled( cacheable = true )
    public static List< PricebookEntry > fetchProducts() {
     
        return [ 
            SELECT Id, Product2.Name, IsActive, UnitPrice, Product2.Family 
            FROM PricebookEntry 
            LIMIT 10 
        ];
         
    }

}