class StudentModel{
  final String sname;
  final String admissionnum;
  StudentModel({ required this.sname,required this.admissionnum});
  //converts json string into objects
  factory StudentModel.fromJson(Map<String,dynamic>json){
    return StudentModel(sname:json['sname']??"",
    admissionnum:json['admissionnum']??"");
  }
}
