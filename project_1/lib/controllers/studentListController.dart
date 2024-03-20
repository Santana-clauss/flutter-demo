import 'package:get/get.dart';

class StudentController extends GetxController{
final loadingStudent=true.obs;
final studentList={}.obs;
updateStudentList(list)=>studentList.value=list;
updateLoadingStudent(loading)=>loadingStudent.value=loading;

}