using School.Models;
using Dapper;
using School.Utilities;
using School.DTOs;

namespace School.Repositories;


public interface ISubjectsRepository
{ 
    Task<Subjects> GetById(long SubjectsId);
    Task<List<Subjects>> GetList();
    Task<List<SubjectsDTO>> GetSubjects(long Id);

    

}
public class SubjectsRepository : BaseRepository, ISubjectsRepository
{
    public SubjectsRepository(IConfiguration config) : base(config)
    {

    }

   
    public async Task<Subjects> GetById(long SubjectsId)
    {
        var query = $@"SELECT * FROM ""{TableNames.subjects}""
        WHERE Sub_id = @Subid";

        using (var con = NewConnection)
            return await con.QuerySingleOrDefaultAsync<Subjects>(query,
            new
            {
            SubId = SubjectsId
            });

    }

    public async Task<List<Subjects>> GetList()
    {
        var query = $@"SELECT * FROM ""{TableNames.subjects}""";
        List<Subjects> res;
        using (var con = NewConnection)
            res = (await con.QueryAsync<Subjects>(query)).AsList();
        return res;
    }

    public async Task<List<SubjectsDTO>> GetSubjects(long Id)
    {
        var query = $@"SELECT * FROM {TableNames.student_subjects} ss
        LEFT JOIN {TableNames.subjects} s ON s.sub_id = ss.sub_id
        WHERE ss.student_id = @Id";

        using(var con = NewConnection)
        {
            return(await con.QueryAsync<SubjectsDTO>(query, new{Id})).AsList();
        }
    }

}
