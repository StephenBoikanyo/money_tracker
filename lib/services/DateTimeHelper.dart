
class DateTimeHelper {

  late String date ;

  DateTimeHelper(this.date);

  toDateTime(String date){
    DateTime tempDate = DateTime.parse(date);
    return tempDate;
  }




}