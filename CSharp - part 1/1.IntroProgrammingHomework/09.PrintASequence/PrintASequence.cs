﻿using System;

/*  Problem 9. Print a Sequence
    Write a program that prints the first 10 members of the sequence: 2, -3, 4, -5, 6, -7, ...
*/

public class PrintASequence
{
    public static void Main()
    {
        for (int i = 2; i < 12; i++)
        {
            if (i % 2 == 0)
            {
                Console.WriteLine(" " + i);
            }
            else
            {
                Console.WriteLine(-i);
            }
        }
    }
}