import 'dart:io';

void main(){
stdout.writeln("Enter the string: ");
String? str = stdin.readLineSync();
bool flag = true; 
int? len = str?.length;
if(len!=null && str!=null)
{
  for(int i=0; i < len/2 ; i++)
  {
    if(str[i]!=str[len-i-1]){
      flag = false;
    }
  }
}
if(flag)
{
  print("string is palindrome");
} 
else
{
  print("String is not palindrome");
}
}