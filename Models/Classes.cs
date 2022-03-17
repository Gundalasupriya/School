using System.Text.Json.Serialization;
using School.DTO;

namespace School.Models;

public record Classes
{

    [JsonPropertyName("class_id")]
    public long ClassId { get; set; }

    [JsonPropertyName("class_name")]
    public string ClassName { get; set; }


    public ClassesDTO asDto => new ClassesDTO
        {
          ClassId = ClassId,
          ClassName = ClassName,

        };
}