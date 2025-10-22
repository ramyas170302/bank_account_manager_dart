import "dart:io";
void main(){

  BankAccount ? account;

  
  while (true){
  int Total=0;
  print("🏦 Welcome to MCE Bank");
  print("-----------------------");
  print("Enter your choice:");
  print("1. Create Account");
  print("2. Deposit Money");
  print("3. Withdraw Money");
  print("4. View Account Details");
  print("5. Exit\n");
  print("Enter your choice:");
  int firstChoosen=int.parse(stdin.readLineSync()!);
  switch(firstChoosen){
    case 1:{
     
     
    account =BankAccount();
    account.details();
    account.accountType();
    print("\n");
    break;}

   case 2:{
    
     if (account!=null){
        account.deposit();
        
    }
    else{
      print("First create your account");
    }
    print("\n");
    break;
    }

    case 3:
    {
      if (account!=null){
      
      account.Withdraw();
      }
      else{
         print("First create your account");
      }
      print("\n");
      break;
    }

    case 4:
    {
      if (account!=null){
      
      
     
      account.ViewDetails();
      }
      else{
         print("First create your account");
        
      }
      
      print("\n");
      break;
    }

    case 5:
    {
      print("Thank you For creating Account in our MCE Bank!");
      exit(0);

    }

    default:
    print("Invaild Option ! please enter correct option...");

  }

  
  
}
}

class BankAccount{
  String name="";
  int acc=0;
  int amt=0;
  int balance=0;
  String Type="";
 

  void details(){
    print("CREATE ACCOUNT\n");
    print("Enter your name:");
    name=stdin.readLineSync()!;
    print("Enter Account Number:");
    acc=int.parse(stdin.readLineSync()!);
    }

  void accountType(){
    print("Select Account Type (1. Saving / 2. Current):");
    int choice =int.parse(stdin.readLineSync()!);
    if (choice==1){
    Type="Saving";
      
    }
    else{
    Type="Current";
     
    }
     print("Account created Successfully!");
      print("Account Type: $Type");
      print("College Bank: MCE Bank");
}

  
  void deposit(){
    
    print("Enter Account Number:");
    acc=int.parse(stdin.readLineSync()!);
    print ("Enter amount to deposit:");
    amt=int.parse(stdin.readLineSync()!);
    print("Amount deposited Successfully!");
    balance+=amt;
    print("Update Balance:₹$balance");

  }

  void Withdraw(){
    print("Enter Account Number:");
    acc=int.parse(stdin.readLineSync()!);
    print("Enter Amount To Withdraw:");
    amt=int.parse(stdin.readLineSync()!);
    if (amt>=balance){
    balance-=amt;
    print("processing");
    }
    else{
      print("You Don't have that much of amount");
    }


  }

  void ViewDetails(){
    print("Enter your Account Number:");
    int accno=int.parse(stdin.readLineSync()!);
    if (accno==acc){
    print("Name:$name\nAccount No:$acc\nAccount Type:$Type\nBalance:$balance\nBank Name: MCE Bank");
  }
  else{
    print("Invalid Account Number");
  }
  }
}






