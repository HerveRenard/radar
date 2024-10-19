class RpricingCalculator{

  static double calculatorTotalPrice(double productPrice, String location){
    double taxRate = getTaxRateLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  static String calculatorShippingCost(double productPrice, String location){

    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculatorTaxe(double productPrice, String location){
    double taxRate = getTaxRateLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateLocation(String location){
    return 0.10;
  }

  static double getShippingCost(String location){
    return 5.0;
  }

}