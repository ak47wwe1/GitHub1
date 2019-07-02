using System;
using System.Web;
using System.IO;
using System.Xml;
using System.Xml.XPath;
using System.Xml.Linq;
using System.Drawing;
using System.Text.RegularExpressions;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace XiaoboPay
{
    public partial class InterFace : System.Web.UI.Page
    {
		
		public string ctype="";
		public string qrcode="";
		public string orderid = "";
		public string money = "";
		public string paytype = "";
				
        protected void Page_Load(object sender, EventArgs e)
        {
		}
            
    }
	
	
}
