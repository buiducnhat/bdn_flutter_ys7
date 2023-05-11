class Ys7VideoRequestEntity {
  int startTime;
  int endTime;
  String deviceSerial;
  String verifyCode;
  int cameraNo;

  Ys7VideoRequestEntity(
      {required this.startTime,
      required this.endTime,
      required this.deviceSerial,
      required this.verifyCode,
      required this.cameraNo});

  Ys7VideoRequestEntity.fromJson(Map<String, dynamic> json)
      : startTime = json['startTime'],
        endTime = json['endTime'],
        deviceSerial = json['deviceSerial'],
        verifyCode = json['verifyCode'],
        cameraNo = json['cameraNo'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['startTime'] = startTime;
    data['endTime'] = endTime;
    data['deviceSerial'] = deviceSerial;
    data['verifyCode'] = verifyCode;
    data['cameraNo'] = cameraNo;
    return data;
  }
}
