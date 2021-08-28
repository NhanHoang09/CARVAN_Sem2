using System;
using System.Collections.Generic;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace CARVAN.Models.ViewModels
{
    public class LoginModel
    {
        public string LoginName { get; set; }

        public string Password { get; set; }

        public bool RememberLogin { get; set; }
    }
}