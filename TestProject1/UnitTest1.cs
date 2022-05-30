using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.IO;
using System;


namespace TestProject1
{
    [TestClass]
    public class UnitTest1
    {
        private const string Expected = "kursovik";
        [TestMethod]
        public void TestMethod1()
        {
            using (var sw = new StringWriter())
            {
                Console.SetOut(sw);
                kursovik.Program.Main();

                var result = sw.ToString().Trim();
                Assert.AreEqual(Expected, result);
            }
        }
    }
}





