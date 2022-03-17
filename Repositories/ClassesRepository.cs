using School.Models;
using Dapper;
using School.Utilities;
using School.DTOs;

namespace School.Repositories;


public interface IClassesRepository
{
    
    Task<Classes> GetById(long ClassesId);
    Task<List<Classes>> GetList();
    
}
public class ClassesRepository : BaseRepository, IClassesRepository
{
    public ClassesRepository(IConfiguration config) : base(config)
    {

    }

    public async Task<Classes> GetById(long ClassId)
    {
        var query = $@"SELECT * FROM ""{TableNames.classes}""
        WHERE class_id = @ClassId";

        using (var con = NewConnection)
         return await con.QuerySingleOrDefaultAsync<Classes>(query, new{ ClassId});
      }

    public async Task<List<Classes>> GetList()
    {
        var query = $@"SELECT * FROM ""{TableNames.classes}""" ;
        List<Classes> res;
        using (var con = NewConnection)
         res = (await con.QueryAsync<Classes>(query)).AsList();
        return res;
    }
}