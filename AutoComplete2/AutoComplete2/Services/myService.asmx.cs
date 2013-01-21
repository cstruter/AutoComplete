using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace AutoComplete2.Services
{
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    [System.Web.Script.Services.ScriptService]
    public class myService : System.Web.Services.WebService
    {
        [WebMethod]
        public string[] Get(String prefixText, Int32 count)
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