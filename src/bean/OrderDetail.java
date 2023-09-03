package bean;

public class OrderDetail {
    private Integer id;
    private String order_id;
    private Integer flower_id;
    private Integer flower_num;


    public OrderDetail() {
    }

    public OrderDetail(Integer id, String order_id, Integer flower_id, Integer flower_num) {
        this.id = id;
        this.order_id = order_id;
        this.flower_id = flower_id;
        this.flower_num = flower_num;
    }

    /**
     * 获取
     *
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置
     *
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取
     *
     * @return order_id
     */
    public String getOrder_id() {
        return order_id;
    }

    /**
     * 设置
     *
     * @param order_id
     */
    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    /**
     * 获取
     *
     * @return flower_id
     */
    public Integer getFlower_id() {
        return flower_id;
    }

    /**
     * 设置
     *
     * @param flower_id
     */
    public void setFlower_id(Integer flower_id) {
        this.flower_id = flower_id;
    }

    /**
     * 获取
     *
     * @return flower_num
     */
    public Integer getFlower_num() {
        return flower_num;
    }

    /**
     * 设置
     *
     * @param flower_num
     */
    public void setFlower_num(Integer flower_num) {
        this.flower_num = flower_num;
    }

    public String toString() {
        return "OrderDetail{id = " + id + ", order_id = " + order_id + ", flower_id = " + flower_id + ", flower_num = " + flower_num + "}";
    }
}
