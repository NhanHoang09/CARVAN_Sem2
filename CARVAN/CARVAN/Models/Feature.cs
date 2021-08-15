namespace CARVAN.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Feature
    {
        [StringLength(10)]
        public string Id_Car { get; set; }

        [Key]
        [StringLength(20)]
        public string Condition { get; set; }

        [StringLength(20)]
        public string Model { get; set; }

        [StringLength(20)]
        public string Price { get; set; }

        [StringLength(20)]
        public string Fuel { get; set; }

        [StringLength(20)]
        public string Body_Style { get; set; }

        [StringLength(20)]
        public string Doors { get; set; }

        [StringLength(20)]
        public string Power_Car { get; set; }

        [StringLength(20)]
        public string Make { get; set; }

        [StringLength(20)]
        public string Year_Car { get; set; }

        [StringLength(20)]
        public string Mileage { get; set; }

        [StringLength(20)]
        public string Color { get; set; }

        [StringLength(20)]
        public string Transmission { get; set; }

        [StringLength(20)]
        public string Battery { get; set; }

        [StringLength(20)]
        public string Drivetrain { get; set; }

        [StringLength(20)]
        public string Torque { get; set; }

        [StringLength(20)]
        public string Engine { get; set; }

        [StringLength(20)]
        public string Power_output { get; set; }

        [StringLength(20)]
        public string Electric_Motor_Voltage { get; set; }

        [StringLength(20)]
        public string Valves_Per_Cylinder { get; set; }

        [StringLength(20)]
        public string Compression_Ratio { get; set; }

        [StringLength(20)]
        public string Layout { get; set; }

        [StringLength(20)]
        public string Horsepower { get; set; }

        [StringLength(20)]
        public string Number_of_Cylinders { get; set; }

        [StringLength(20)]
        public string Displacement { get; set; }

        [StringLength(20)]
        public string MGP { get; set; }

        [StringLength(20)]
        public string Seats { get; set; }

        public virtual Product Product { get; set; }
    }
}
