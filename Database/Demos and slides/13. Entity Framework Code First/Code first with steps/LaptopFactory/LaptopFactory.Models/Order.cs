﻿namespace LaptopFactory.Models
{
    using System.ComponentModel.DataAnnotations;

    public class Order
    {
        public int Id { get; set; }

        public int ModelID { get; set; }

        public virtual Model Model { get; set; }

        [StringLength(8)]
        public string Month { get; set; }

        public int Count { get; set; }
    }
}
