package utils;


import org.apache.commons.dbutils.BasicRowProcessor;
import org.apache.commons.dbutils.BeanProcessor;
import org.apache.commons.dbutils.GenerousBeanProcessor;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.sql.SQLException;
import java.util.List;


/**
 * 定义一个用来被继承的对数据库进行基本操作的Dao
 *
 * @param <T>
 * @author
 */
public abstract class BaseDao<T> {

    //驼峰转换
    // 定义你的 BeanProcessor（用你实际的类替换 YourClass）
    BeanProcessor bean = new GenerousBeanProcessor();
    // 使用 BeanProcessor 创建 BasicRowProcessor
    BasicRowProcessor processor = new BasicRowProcessor(bean);


    protected QueryRunner queryRunner;
    // 定义一个变量来接收泛型的类型
    private Class<T> type;

    // 获取T的Class对象，获取泛型的类型，泛型是在被子类继承时才确定
    public BaseDao() {
        queryRunner = new QueryRunner(JdbcUtils.getDataSource());
        // 获取子类的类型
        Class clazz = this.getClass();
        // 获取父类的类型
        // getGenericSuperclass()用来获取当前类的父类的类型
        // ParameterizedType表示的是带泛型的类型
        ParameterizedType parameterizedType = (ParameterizedType) clazz.getGenericSuperclass();
        // 获取具体的泛型类型 getActualTypeArguments获取具体的泛型的类型
        // 这个方法会返回一个Type的数组
        Type[] types = parameterizedType.getActualTypeArguments();
        // 获取子类申明的具体的泛型的类型·
        this.type = (Class<T>) types[0];//Book.class

    }


    /**
     * 通用的增删改操作
     *
     * @param sql    sql语句
     * @param params sql语句中的参数
     * @return 返回的是影响行
     */
    public int update(String sql, Object... params) {
        int count = 0;
        try {
            count = queryRunner.update(sql, params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }

    /**
     * 获取一个对象[通过主键id查询的方法]
     *
     * @param sql
     * @param params
     * @return
     */
    public T getBean(String sql, Object... params) {
        T t = null;
        try {
            t = queryRunner.query(sql, new BeanHandler<T>(type, processor), params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return t;
    }

    /**
     * 获取所有对象[查询多条数据时使用]
     *
     * @param sql
     * @param params
     * @return
     */
    public List<T> getBeanList(String sql, Object... params) {
        List<T> list = null;
        try {
            list = queryRunner.query(sql, new BeanListHandler<T>(type, processor), params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    /**
     * 获取一行且只有一值得方法，专门用来执行像 select count(*)...这样的sql语句
     *
     * @param sql
     * @param params
     * @return
     */
    public Long getValue(String sql, Object... params) {
        Long count = null;
        try {
            // 调用queryRunner的query方法获取一个单一的值
            count = queryRunner.query(sql, new ScalarHandler<Long>(), params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }

}