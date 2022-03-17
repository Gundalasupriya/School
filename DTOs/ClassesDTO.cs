using System.Text.Json.Serialization;
using School.DTOs;

namespace School.DTO;

public record ClassesDTO
{

    [JsonPropertyName("class_id")]
    public long ClassId { get; set; }

    [JsonPropertyName("class_name")]
    public string ClassName { get; set; }

    [JsonPropertyName("students_in_class")]
    public List<StudentDTO> Student { get; set; }

}



    


    



