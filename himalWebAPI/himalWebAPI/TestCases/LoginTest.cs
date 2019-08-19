using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace himalWebAPI.TestCases
{
    public class LoginTest
    {
        [TestCase]
        public static void Test()
        {
            IWebDriver driver = new ChromeDriver();
            //driver.Navigate().GoToUrl("https://localhost:44325/api/values");
            driver.Navigate().GoToUrl("http://localhost:4200");
            driver.Close();
            
        }
       
    }
}
