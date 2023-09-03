package utils;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;

import java.util.Map;

public class WebUtils {
    /**
     * 把Map 中的值注入到对应的JavaBean 属性中。
     *
     * @param value
     * @param bean
     */
    public static <T> T copyParamToBean(Map value, T bean) {
        try {
            System.out.println("注入之前：" + bean);
            /**
             * 把所有请求的参数都注入到user 对象中
             */
            BeanUtils.populate(bean, value);
            System.out.println("注入之后：" + bean);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bean;
    }

    public static <T> T copyParamToBean(Map value, T bean, Class aClass) {
        try {
            System.out.println("注入之前：" + bean);

            //创建一个日期转换器
            DateConverter dateConverter = new DateConverter();
            String[] patt = {"yyyy-MM-dd", "yyyy-MM-dd HH:mm:ss"};
            //设置格式
            dateConverter.setPatterns(patt);
            //注册格式
            ConvertUtils.register(dateConverter, aClass);

            BeanUtils.populate(bean, value);
            System.out.println("注入之后：" + bean);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bean;
    }

    /**
     * 将字符串转换成为int 类型的数据
     *
     * @param strInt
     * @param defaultValue
     * @return
     */
    public static int parseInt(String strInt, int defaultValue) {
        try {
            return Integer.parseInt(strInt);
        } catch (Exception e) {
//            e.printStackTrace();
        }
        return defaultValue;
    }

    public static double parseDouble(String strInt, double defaultValue) {
        try {
            return Double.parseDouble(strInt);
        } catch (Exception e) {
//            e.printStackTrace();
        }
        return defaultValue;
    }

}