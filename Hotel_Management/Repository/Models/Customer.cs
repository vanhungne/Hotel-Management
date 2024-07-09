using System;
using System.Collections.Generic;

namespace Repository.Models;

public partial class Customer
{
    public int CustomerId { get; set; }

    public string CustomerFullName { get; set; } = null!;

    public string? Telephone { get; set; }

    public string EmailAddress { get; set; } = null!;

    public DateOnly? CustomerBirthday { get; set; }

    public int CustomerStatus { get; set; }

    public string Password { get; set; } = null!;

    public virtual ICollection<Booking> Bookings { get; set; } = new List<Booking>();
}
