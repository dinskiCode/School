using System;

namespace C_Sharp_Test
{
    class Program
    {
        String name;
        int yearOfBuild;
        double price;

        public Program(String name, int yearOfBuild, double price)
        {
            this.name = name;
            this.yearOfBuild = yearOfBuild;
            this.price = price;
        }

        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            Program consoleProgram = new Program("Consoleprogram", 2021, 12.99);
            Console.WriteLine(consoleProgram.name + " = program name");
        }
    }
}
