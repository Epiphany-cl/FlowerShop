package bean;

public class OrderDetail {
    private Integer id;
    private String orderId;
    private Integer flowerId;
    private Integer flowerNum;


    public OrderDetail() {
    }

    public OrderDetail(Integer id, String orderId, Integer flowerId, Integer flowerNum) {
        this.id = id;
        this.orderId = orderId;
        this.flowerId = flowerId;
        this.flowerNum = flowerNum;
    }

    /**
     * 获取
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取
     * @return orderId
     */
    public String getOrderId() {
        return orderId;
    }

    /**
     * 设置
     * @param orderId
     */
    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    /**
     * 获取
     * @return flowerId
     */
    public Integer getFlowerId() {
        return flowerId;
    }

    /**
     * 设置
     * @param flowerId
     */
    public void setFlowerId(Integer flowerId) {
        this.flowerId = flowerId;
    }

    /**
     * 获取
     * @return flowerNum
     */
    public Integer getFlowerNum() {
        return flowerNum;
    }

    /**
     * 设置
     * @param flowerNum
     */
    public void setFlowerNum(Integer flowerNum) {
        this.flowerNum = flowerNum;
    }

    public String toString() {
        return "OrderDetail{id = " + id + ", orderId = " + orderId + ", flowerId = " + flowerId + ", flowerNum = " + flowerNum + "}";
    }
}
