public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String k = new String();
  String n = reverse(word);
  for (int i = 0; i<word.length();i++)
  {
    if(Character.isLetter(word.charAt(i)))
    {
      k= k + word.substring(i,i+1);
    }
  }
  if(k.toLowerCase().equals(n))
  {
    return true;
  }
  
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
    for (int i = str.length()-1; i>=0;i--)
    {
      if(Character.isLetter(str.charAt(i)))
      {
        sNew= sNew + str.substring(i,i+1);
      }
    }
    return sNew.toLowerCase();
}


