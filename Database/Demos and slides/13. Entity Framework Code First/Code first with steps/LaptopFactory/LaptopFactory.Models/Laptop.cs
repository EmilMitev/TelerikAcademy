﻿namespace LaptopFactory.Models
{
    public class Laptop
    {
        public int Id { get; set; }

        public int MakerID { get; set; }

        public virtual Maker Maker { get; set; }

        public int ModelID { get; set; }

        public virtual Model Model { get; set; }

        public decimal Price { get; set; }

        public int Quantity { get; set; }
    }
}
