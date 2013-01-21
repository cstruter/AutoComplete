using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace AutoComplete2
{
    public partial class _Default : System.Web.UI.Page
    {
        [WebMethod]
        public static string[] Get(String prefixText, Int32 count)
        {
            // Dummy data - don't do this
            string[] data = new string[] { 
            "Christoff Trüter", 
            "Eugene Stander",
            "Roland Cooper",
            "Alexander Mehlhorn",
            "Derek Campher",
            "Julie Trüter",
            "Hanno Coetzee",
            "Wayne Kleynhans",
            "Pieter Du Plooy",
            "Pam Nizar" };

            return (from p in data
                    where p.IndexOf(prefixText, StringComparison.OrdinalIgnoreCase) >= 0
                    select p).Take<String>(count).ToArray();
        }
    }
}
