using System;
using System.Collections.Generic;

namespace Repository.Models;

public partial class Booking
{
    public int BookingId { get; set; }

    public int CustomerId { get; set; }

    public int RoomId { get; set; }

    public DateOnly CheckInDate { get; set; }

    public DateOnly CheckOutDate { get; set; }

    public decimal TotalPrice { get; set; }

    public int BookingStatus { get; set; }

    public DateTime? BookingDate { get; set; }

    public virtual Customer Customer { get; set; } = null!;

    public virtual RoomInformation Room { get; set; } = null!;
}
