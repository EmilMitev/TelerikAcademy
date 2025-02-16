﻿using System;

/*  Problem 3. English digit
    Write a method that returns the last digit of given integer as an English word.
 */

class EnglishDigit
{
    static void Main()
    {
        Console.Write("Enter your number: ");
        int number = int.Parse(Console.ReadLine());
        int tempNumber = number % 10;
        
        Console.WriteLine("Last digit of {0} is: {1}", number, LastDigitAsWord(tempNumber));
    }

    static string LastDigitAsWord(int lastDigit)
    {
        string word = "";
        switch (lastDigit)
        {
            case 0: word = "Zero";  break;
            case 1: word = "One";   break;
            case 2: word = "Two";   break;
            case 3: word = "Three"; break;
            case 4: word = "Four";  break;
            case 5: word = "Five";  break;
            case 6: word = "Six";   break;
            case 7: word = "Seven"; break;
            case 8: word = "Eight"; break;
            case 9: word = "Nine";  break;
            default:
                break;
        }
        return word;
    }
}