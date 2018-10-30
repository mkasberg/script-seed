#!/usr/bin/env csharp

using System;
class CSharp_Seed {
    
    static void Main(string[] args) {
         string usage = "Usage: CSharpSeed.exe [options]\n -h \tDisplay help\n -t \tProvide a type of seed";
         if (args.Length == 0) {
            Console.WriteLine(usage);
            Console.WriteLine("You planted a tomato seed!");
        }
         for (int arg = 0; arg < args.Length; arg++) {
            switch(args[arg].ToString()) {
                case "-h":
                    Console.WriteLine(usage);
                    break;
                case "-t":
                    Console.WriteLine("You planted a {0} seed!", args[arg + 1].ToString());
                    break;
            }
        }
    }
}