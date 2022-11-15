class NotificationModel {
  String date;
  String title;
  String subTitle;
  String type;

  NotificationModel({
    required this.date,
    required this.title,
    required this.subTitle,
    required this.type,
  });
}

List<NotificationModel> listNotif = [
  NotificationModel(
      date: '14 Nove 2022, 7.15 PM',
      title: 'You received Rp 100.000 from Alexandr Gibson Jogja',
      subTitle: '‘Pay debt’',
      type: 'in'),
  NotificationModel(
      date: '14 Nove 2022, 7.10 PM',
      title: 'You spent Rp 32.000 for Coffe Cetar back Tugu Sentral',
      subTitle: '‘Buy drink’',
      type: 'out'),
  NotificationModel(
      date: '12 Nove 2022, 7.15 PM',
      title: 'You spent Rp 210.000 for pay Tokosbla ijo mera',
      subTitle: '‘Pay debt’',
      type: 'out'),
  NotificationModel(
      date: '11 Nove 2022, 7.15 PM',
      title: 'You received Rp 100.000 from Alexandr Gibson Jogja',
      subTitle: '‘Pay debt’',
      type: 'in'),
  NotificationModel(
      date: '10 Nove 2022, 7.15 PM',
      title: 'You spent Rp 210.000 for pay Tokosbla ijo mera',
      subTitle: '‘Buy items’',
      type: 'out'),
  NotificationModel(
      date: '7 Nove 2022, 7.15 PM',
      title: 'You spent Rp 210.000 for pay Tokosbla ijo mera',
      subTitle: '‘Pay debt’',
      type: 'out'),
  NotificationModel(
      date: '1 Nove 2022, 7.15 PM',
      title: 'You received Rp 100.000 from Alexandr Gibson Jogja',
      subTitle: '‘Pay debt’',
      type: 'in')
];
