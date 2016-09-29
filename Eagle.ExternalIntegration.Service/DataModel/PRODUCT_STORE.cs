namespace Eagle.ExternalIntegration.Service.DataModel
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class PRODUCT_STORE
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int StoreNo { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int SKU { get; set; }

        public decimal? OnHandQty { get; set; }

        public decimal? OnOrderedQty { get; set; }

        public decimal? CommittedQty { get; set; }

        public decimal? InTransitQty { get; set; }

        public DateTime? LSoldDate { get; set; }

        public DateTime? LOrderDate { get; set; }

        public DateTime? FReceiveDate { get; set; }

        public DateTime? LReceiveDate { get; set; }

        public DateTime? PollStatusDate { get; set; }

        public byte PollStatusCode { get; set; }

        public bool Blocked { get; set; }
    }
}
