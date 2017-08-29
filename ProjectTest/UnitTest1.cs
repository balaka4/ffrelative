using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Configuration;

namespace ProjectTest {
	[TestClass]
	public class UnitTest1 {

		[TestMethod]
		public void TestMethod1() {
			var cs = ConfigurationManager.ConnectionStrings["fantasy"].ConnectionString;
			string sql = "SELECT * FROM ff.Player";

			using (var conn = cs.conne)
		}

	}
}
