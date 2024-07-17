class PricingPlanModel {
  final String amount;
  final String description;
  final String duration;

  PricingPlanModel(
      {required this.amount,
      required this.description,
      required this.duration});
}

List<PricingPlanModel> plans = [
  PricingPlanModel(
      amount: "30",
      description:
          "Unlimited access with the doctor and get daily notes, article and get free consult for seven days",
      duration: "Week"),
  PricingPlanModel(
      amount: "100",
      description:
          "Unlimited access with the doctor and get daily notes, article and get free consult for one month",
      duration: "Month"),
];
