using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Configuration;
using System.Data.SqlClient;
using Dapper;

namespace ProjectTest {
	[TestClass]
	public class ConnectionTest {

		[TestMethod]
		public void TestConnection() {
			var cs = ConfigurationManager.ConnectionStrings["fantasy"].ConnectionString;
			const string sql = "SELECT * FROM ff.Player";

			using (var conn = new SqlConnection(cs)) {
				var results = conn.Query(sql);

				foreach (var r in results) {
					var firstName = r.first_name;
					Console.WriteLine($"First Name: {firstName}");
				}
			}
		}

	}
}
