namespace CARVAN.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class User
    {
        [Key]
        [StringLength(10)]
        public string Id_User { get; set; }

        [StringLength(20)]
        public string Name_User { get; set; }

        [StringLength(20)]
        public string PassWord_User { get; set; }

        [StringLength(20)]
        public string Email_User { get; set; }
    }
}
