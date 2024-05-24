class TransctionModel {
  final String title, date, amount;
  final bool isWithdrawal;

  TransctionModel(
      {required this.title,
      required this.date,
      required this.amount,
      required this.isWithdrawal});
}
