namespace Eagle.ExternalIntegration.Service.DataModel
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class RMSModel : DbContext
    {
        public RMSModel()
            : base("name=RMSModel")
        {

            Database.SetInitializer<RMSContext>(null);
        }

        public virtual DbSet<PRODUCT_STORE> PRODUCT_STORE { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<PRODUCT_STORE>()
                .Property(e => e.OnHandQty)
                .HasPrecision(18, 5);

            modelBuilder.Entity<PRODUCT_STORE>()
                .Property(e => e.OnOrderedQty)
                .HasPrecision(18, 5);

            modelBuilder.Entity<PRODUCT_STORE>()
                .Property(e => e.CommittedQty)
                .HasPrecision(18, 5);

            modelBuilder.Entity<PRODUCT_STORE>()
                .Property(e => e.InTransitQty)
                .HasPrecision(18, 5);
        }
    }
}
