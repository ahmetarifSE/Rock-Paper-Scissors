
import 'dart:io';
import 'dart:math';
enum choice{rock,paper,scissors}
void main(){
print("Press [y] to start the game, [n] to close.");
var giris = stdin.readLineSync();
if(giris=="n"){
  exit(0);
}
  while(giris=="y"){
  print("Rock=0-Paper=1-Scissors=2");
  print("Please make your choise!");
  
  var value=int.tryParse(stdin.readLineSync() ?? "");
  
  print(value);
  var randomchoice= choice.values[ Random().nextInt(3)];
  //print(randomchoice);
  if(randomchoice==choice.rock){
    print("Bot choice Rock!");
    print(value);
    if(value==0){
      print("DRAW!");
    }else if(value==1){
      print("YOU WIN");
    }
    else{
      print("YOU LOSE!");
    }
  }else if(randomchoice==choice.paper){
     print("Bot choice Paper!");
    if(value==1){
      print("DRAW!");
    }else if(value==2){
      print("YOU WIN");
    }else{
      print("YOU LOSE!");
    }
  }else if(randomchoice==choice.scissors){
    print("Bot choice Scissors");
    
    if(value==0){
      print("YOU WIN!");
    }else if(value==2){
      print("DRAW!");
    }else{
      print("YOU LOSE!");
    }

  }

 print("Do you want to play again [y]/[n]");
 var giris= stdin.readLineSync();
 if(giris=="y"){
  continue;
 }else if(giris=="n"){
   exit(0);}
   

 
  

  
  }
}