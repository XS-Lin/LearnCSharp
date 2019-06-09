using System;
using OpenQA.Selenium.Edge;

namespace selenium_test
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            EdgeDriver driver = new EdgeDriver();
            driver.Url = "";
        }
    }
}
