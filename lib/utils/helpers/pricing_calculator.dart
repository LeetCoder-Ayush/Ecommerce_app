class TPricingCalculator {

  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice + taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  static String calculateShippingCost(double productPrice, String location) {
    double ShippingCost = getShippingCost(location);
    return ShippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice + taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    //lookup the shipping cost for the given location from a tax based database or API
    // Return the appropriate tax Rate
    return 0.10; //Example tax rate of 10%
  }

  static double getShippingCost(String location) {
    //lookup the shipping cost for the given location using a shipping rate API
    //calculate the shipping cost based on various factors like distance, weight etc.
    return 5.00; //Example shipping cost of $5
  }
}