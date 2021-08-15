using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace CARVAN.Models
{
    public partial class Carvan_Project_Model : DbContext
    {
        public Carvan_Project_Model()
            : base("name=Carvan_Project_Model")
        {
        }

        public virtual DbSet<Post> Posts { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<Feature> Features { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Product>()
                .Property(e => e.Id_Car)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.Name_Car)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.Range_Of_Car)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.Brand_Car)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.Seller)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.Status)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.Image_1)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.Image_2)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.Image_3)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.Image_4)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.Image_5)
                .IsUnicode(false);

            modelBuilder.Entity<Product>()
                .Property(e => e.Image_6)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.Id_User)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.Name_User)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.PassWord_User)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.Email_User)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Id_Car)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Condition)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Model)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Price)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Fuel)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Body_Style)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Doors)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Power_Car)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Make)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Year_Car)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Mileage)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Color)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Transmission)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Battery)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Drivetrain)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Torque)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Engine)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Power_output)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Electric_Motor_Voltage)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Valves_Per_Cylinder)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Compression_Ratio)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Layout)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Horsepower)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Number_of_Cylinders)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Displacement)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.MGP)
                .IsUnicode(false);

            modelBuilder.Entity<Feature>()
                .Property(e => e.Seats)
                .IsUnicode(false);
        }
    }
}
