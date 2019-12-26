using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FineAdmin.IRepository;
using FineAdmin.Model;
using Dapper;

namespace FineAdmin.Repository
{
    public class ModuleRepository : BaseRepository<ModuleModel>, IModuleRepository
    {
        /// <summary>
        /// 根据角色ID获取菜单列表
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="roleId"></param>
        /// <returns></returns>
        public IEnumerable<ModuleModel> GetModuleListByRoleId(string sql, int roleId)
        {
            using (var conn = SqlHelper.SqlConnection())
            {
                sql += @" WHERE id in(SELECT a.ModuleId FROM roleauthorize a
                        INNER JOIN module b ON a.ModuleId = b.Id
                        WHERE 1=1
                        and a.RoleId = @RoleId
                        GROUP BY a.ModuleId)
                        ORDER BY m.SortCode ASC";
                return conn.Query<ModuleModel>(sql, new { RoleId = roleId });
            }
        }
    }
}
