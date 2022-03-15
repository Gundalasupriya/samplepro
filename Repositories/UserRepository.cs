using Dapper;
using Samplepro.Models;
using Samplepro.Repositories;
using Samplepro.Utilities;

namespace Samplepro.Repositories;

public interface IUserRepository
{
    Task<User> Create(User Item);
    Task<bool> Update(User Item);
    Task<bool> Delete(long Id);
    Task<User> GetById(long Id);
    Task<List<User>> GetList();

}
public class UserRepository : BaseRepository, IUserRepository
{
    public UserRepository(IConfiguration config) : base(config)
    {

    }

    public async Task<User> Create(User Item)
    {
        var query = $@"INSERT INTO ""{TableNames.user_details}"" 
        (user_name,first_name, last_name, date_of_birth, contact, email, gender,created_at) 
        VALUES (@UserName,@FirstName, @LastName, @DateOfBirth, @Contact, @Email, @Gender,@CreatedAt) 
        RETURNING *";

        using (var con = NewConnection)
        {
            var res = await con.QuerySingleOrDefaultAsync<User>(query, Item);
            return res;
        }
    }
    public async Task<bool> Delete(long Id)
    {
        var query = $@"DELETE FROM ""{TableNames.user_details}"" 
        WHERE id = @Id";

        using (var con = NewConnection)
        {
            var res = await con.ExecuteAsync(query, new { Id });
            return res > 0;
        }
    }

    public async Task<User> GetById(long Id)
    {
        var query = $@"SELECT * FROM ""{TableNames.user_details}"" 
        WHERE id = @Id";

        using (var con = NewConnection)
            return await con.QuerySingleOrDefaultAsync<User>(query, new { Id });
    }

    public async Task<List<User>> GetList()
    {
        var query = $@"SELECT * FROM ""{TableNames.user_details}""";

        List<User> res;
        using (var con = NewConnection)
            res = (await con.QueryAsync<User>(query)).AsList();
        return res;
    }
    public async Task<bool> Update(User Item)
    {
        var query = $@"UPDATE ""{TableNames.user_details}"" SET  first_name = @FirstName, 
         last_name = @LastName, contact = @Contact,email = @Email WHERE id = @Id";


        using (var con = NewConnection)
        {
            var rowCount = await con.ExecuteAsync(query, Item);
            return rowCount == 1;
        }
    }
}