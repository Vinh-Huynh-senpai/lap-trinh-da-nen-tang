using System.ComponentModel.DataAnnotations.Schema;

namespace WebApi.Models;
[Table("Member")]
public class Member
{
    [Column("MemberId")]
    public string? Id { get; set; }
    public string GivenName { get; set; } = null!;
    public string? Surname { get; set; } = null!;

    public string Email { get; set; } = null!;

    public string Password { get; set; } = null!;
    public Role Role { get; set; }

}