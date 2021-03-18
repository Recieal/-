using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL//数据访问层
{
    public class DALProject//用于对project表进行增删改查操作
    {
        /// <summary>
        /// 查询所有项目信息
        /// </summary>
        /// <returns></returns>
        public static DataTable GetAllProjects()
        {
            string sql = "select * from project p,projectClass pc where p.classid=pc.classid";
            return DBH.GetDataTable(sql);
        }
        /// <summary>
        /// 按条件查询项目信息
        /// </summary>
        /// <param name="name">项目名称</param>
        /// <returns></returns>
        public static DataTable GetProjectsByName(string name)
        {
            string sql = $"select * from project p,projectClass pc " +
                $"wherer p.classid=pc.classid and p.projectName like '%{name}%'";
            return DBH.GetDataTable(sql);
        }
        /// <summary>
        /// 添加项目信息
        /// </summary>
        /// <param name="name">项目名称</param>
        /// <param name="money">目标金额</param>
        /// <param name="count">支持人数</param>
        /// <param name="pros">人气</param>
        /// <param name="classid">类型</param>
        /// <returns></returns>
        public static bool AddProject(string name,decimal money,int count,int pros,int classid)
        {
            string sql = $"insert into project values('{name},'{money},{count},{pros},{classid})";
            return DBH.ExecuteNonQuery(sql);
        }
        /// <summary>
        /// 编辑项目信息
        /// </summary>
        /// <param name="name">项目名称</param>
        /// <param name="money">目标金额</param>
        /// <param name="count">支持人数</param>
        /// <param name="pros">人气</param>
        /// <param name="classid">类型</param>
        /// <param name="projectid">项目ID</param>
        /// <returns></returns>
        public static bool EditProject(string name, decimal money, int count, int pros, int classid,int projectid)
        {
            string sql = $"update project set ProjectName = '{name}',TargetMoney={money},SupportCount={count}," +
                $"Progress={pros},ClassID={classid} where ProjectID={projectid}";
            return DBH.ExecuteNonQuery(sql);
        }
        /// <summary>
        /// 删除项目信息
        /// </summary>
        /// <param name="id">项目ID</param>
        /// <returns></returns>
        public static bool DelProject(int id)
        {
            string sql = $"delete from project where projectID = {id}";
            return DBH.ExecuteNonQuery(sql);
        }
    }
}
