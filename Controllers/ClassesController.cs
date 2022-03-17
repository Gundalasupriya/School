using Microsoft.AspNetCore.Mvc;
using School.DTO;
using School.DTOs;
using School.Models;
using School.Repositories;

namespace School.Controllers;

[ApiController]
[Route("api/classes")]
public class ClassesController : ControllerBase
{
    private readonly ILogger<ClassesController> _logger;
    private readonly IClassesRepository _classes;
    private readonly IStudentRepository _student;

    public ClassesController(ILogger<ClassesController> logger, IClassesRepository Classes, IStudentRepository Student)
    {
        _logger = logger;
        _classes = Classes;
        _student = Student;
    }
    [HttpGet]
    public async Task<ActionResult<List<ClassesDTO>>> GetAllClasses()
    {
        var ClassesList = await _classes.GetList();

        var dtoList = ClassesList.Select(x => x.asDto);

        return Ok(dtoList);
    }

    [HttpGet("{id}")]
    public async Task<ActionResult<ClassesDTO>> GetClassById([FromRoute] long id)
    {
        var oneclass = await _classes.GetById(id);
        if (oneclass is null)
            return NotFound("No class found with given id");
        var dto = oneclass.asDto;
        dto.Student = (await _student.GetList(oneclass.ClassId)).Select(x=>x.asDto).ToList();
        return Ok(dto);
    }

}

