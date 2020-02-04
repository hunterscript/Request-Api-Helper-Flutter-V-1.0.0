
class AllValidator{
  List target;
  AllValidator({this.target});

  text(){
    for(var i = 0 ; i < target.length ; i++){
      if(target[i] == null || target[i] == ''){
        return false;
      }
    }
  }
}

class Validator{
  var controller;
  var target;
  var message;
  Map<String,String> returnController = {};

  Validator({this.target , this.message , this.controller});
  text(){
      returnController['$controller'] = controller;
    if(target == ''){
      returnController['message'] = message;
      return returnController;
    }else{
      returnController['message'] = null;
      return returnController;
    }
  }
}