namespace CARVAN.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Web.Mvc;
    using System.Linq;


    public partial class Product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            Features = new HashSet<Feature>();
        }

        [Key]
        [StringLength(10)]
        public string Id_Car { get; set; }

        [StringLength(50)]
        public string Name_Car { get; set; }

        [StringLength(20)]
        public string Range_Of_Car { get; set; }

        [StringLength(20)]
        public string Brand_Car { get; set; }

        public int? Pricing { get; set; }

        [StringLength(10)]
        public string Seller { get; set; }

        [StringLength(10)]
        public string Status { get; set; }

        [StringLength(1000)]
        [AllowHtml]
        public string Description { get; set; }

        [StringLength(20)]
        public string Image_1 { get; set; }

        [StringLength(20)]
        public string Image_2 { get; set; }

        [StringLength(20)]
        public string Image_3 { get; set; }

        [StringLength(20)]
        public string Image_4 { get; set; }

        [StringLength(20)]
        public string Image_5 { get; set; }

        [StringLength(20)]
        public string Image_6 { get; set; }

        [NotMapped]
        public Feature DefaultFeature
        {
            get { return Features.First(); }
        }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Feature> Features { get; set; }
    }
}
