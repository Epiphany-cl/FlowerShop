package utils;

import java.util.List;

/**
 * Page 是分页的模型对象
 *
 * @param <T> 是具体的模块的javaBean 类
 */
public class Page<T> {

    public static final Integer PAGE_SIZE = 5;
    // 当前页码
    private Integer pageNo;
    // 总页码
    private Integer pageTotal;
    // 当前页显示数量
    private Integer pageSize = PAGE_SIZE;
    // 总记录数
    private Integer pageTotalCount;
    // 当前页数据
    private List<T> items;

    private String url;


    public Page() {
    }

    public Page(Integer pageNo, Integer pageTotal, Integer pageSize, Integer pageTotalCount, List<T> items) {
        this.pageNo = pageNo;
        this.pageTotal = pageTotal;
        this.pageSize = pageSize;
        this.pageTotalCount = pageTotalCount;
        this.items = items;
    }

    public Page(Integer pageNo, Integer pageTotal, Integer pageSize, Integer pageTotalCount, List<T> items, String url) {
        this.pageNo = pageNo;
        this.pageTotal = pageTotal;
        this.pageSize = pageSize;
        this.pageTotalCount = pageTotalCount;
        this.items = items;
        this.url = url;
    }

    /**
     * 获取
     *
     * @return pageNo
     */
    public Integer getPageNo() {
        return pageNo;
    }

    /**
     * 设置
     *
     * @param pageNo
     */
    public void setPageNo(Integer pageNo) {
        this.pageNo = pageNo;
    }

    /**
     * 获取
     *
     * @return pageTotal
     */
    public Integer getPageTotal() {
        return pageTotal;
    }

    /**
     * 设置
     *
     * @param pageTotal
     */
    public void setPageTotal(Integer pageTotal) {
        this.pageTotal = pageTotal;
    }

    /**
     * 获取
     *
     * @return pageSize
     */
    public Integer getPageSize() {
        return pageSize;
    }

    /**
     * 设置
     *
     * @param pageSize
     */
    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    /**
     * 获取
     *
     * @return pageTotalCount
     */
    public Integer getPageTotalCount() {
        return pageTotalCount;
    }

    /**
     * 设置
     *
     * @param pageTotalCount
     */
    public void setPageTotalCount(Integer pageTotalCount) {
        this.pageTotalCount = pageTotalCount;
    }

    /**
     * 获取
     *
     * @return items
     */
    public List<T> getItems() {
        return items;
    }

    /**
     * 设置
     *
     * @param items
     */
    public void setItems(List<T> items) {
        this.items = items;
    }

    public String toString() {
        return "Page{PAGE_SIZE = " + PAGE_SIZE + ", pageNo = " + pageNo + ", pageTotal = " + pageTotal + ", pageSize = " + pageSize + ", pageTotalCount = " + pageTotalCount + ", items = " + items + "}";
    }

    /**
     * 获取
     *
     * @return url
     */
    public String getUrl() {
        return url;
    }

    /**
     * 设置
     *
     * @param url
     */
    public void setUrl(String url) {
        this.url = url;
    }
}