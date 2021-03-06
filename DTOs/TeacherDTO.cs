using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;
using School.DTOs;

public record   TeacherDTO
{
    [JsonPropertyName("teacher_id")]
    public long TeacherId { get; set; }

    [JsonPropertyName("first_name")]
    public string FirstName { get; set; }
    [JsonPropertyName("last_name")]
    public string LastName { get; set; }

    [JsonPropertyName("gender")]
    public string Gender { get; set; }
    [JsonPropertyName("mobile")]
 
    public long Mobile { get; set; }

    [JsonPropertyName("address")]
    public string Address { get; set; }

    [JsonPropertyName("join_date")]    
    public DateTimeOffset DateOfJoin { get; set; }

    [JsonPropertyName("email")]
    public string Email { get; set; }
         
    [JsonPropertyName("subject")]
    public string Subject { get; set; }

    [JsonPropertyName("students_assigned")]    
    public List<StudentDTO> Student { get; set; }

    
    
}

public record CreateTeacherDTO
{
    

    [JsonPropertyName("first_name")]
    [Required]
    public string FirstName { get; set; }
    [JsonPropertyName("last_name")]
    [Required]
    public string LastName { get; set; }
    
   [JsonPropertyName("gender")]
    [Required]
    public string Gender { get; set; }

    [JsonPropertyName("birth_day")]
    [Required]
    public DateTimeOffset BirthDay { get; set; }

    [JsonPropertyName("mobile")]
     public long Mobile { get; set; }

    [JsonPropertyName("address")]
    public string Address { get; set; }

    [JsonPropertyName("join_date")]    
    public DateTimeOffset DateOfJoin { get; set; }

    
    [JsonPropertyName("email")]
    
    public string Email { get; set; }


    [JsonPropertyName("subject")]
    public string Subject { get; set; }

}
public record TeacherUpdateDTO
{
    
[JsonPropertyName("last_name")]
public string LastName { get; set; }

 [JsonPropertyName("mobile")]
public long? Mobile { get; set; } = null;

[JsonPropertyName("email")]
    
public string Email { get; set; }

 [JsonPropertyName("address")]
 public string Address { get; set; }

[JsonPropertyName("subject")]
public string Subject { get; set; }
    
}


