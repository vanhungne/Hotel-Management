using System;
using System.Collections.Generic;

namespace Repository.Models;

public partial class RoomInformation
{
    public int RoomId { get; set; }

    public string RoomNumber { get; set; } = null!;

    public string? RoomDescription { get; set; }

    public int RoomMaxCapacity { get; set; }

    public bool RoomStatus { get; set; }

    public decimal RoomPricePerDate { get; set; }

    public int RoomTypeId { get; set; }

    public virtual ICollection<Booking> Bookings { get; set; } = new List<Booking>();

    public virtual RoomType RoomType { get; set; } = null!;
}
