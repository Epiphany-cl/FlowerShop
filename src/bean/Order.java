package bean;

public class Order {
    private String orderId;
    private String orderUsername;
    private String orderPhone;
    private String orderNation;
    private String orderAddress;
    private String orderPaymentMode;
    private Double orderPriceTotal;
    private Integer userId;
    private String state;


    public Order() {
    }

    public Order(String orderId, String orderUsername, String orderPhone, String orderNation, String orderAddress, String orderPaymentMode, Double orderPriceTotal, Integer userId, String state) {
        this.orderId = orderId;
        this.orderUsername = orderUsername;
        this.orderPhone = orderPhone;
        this.orderNation = orderNation;
        this.orderAddress = orderAddress;
        this.orderPaymentMode = orderPaymentMode;
        this.orderPriceTotal = orderPriceTotal;
        this.userId = userId;
        this.state = state;
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
     * @return orderUsername
     */
    public String getOrderUsername() {
        return orderUsername;
    }

    /**
     * 设置
     * @param orderUsername
     */
    public void setOrderUsername(String orderUsername) {
        this.orderUsername = orderUsername;
    }

    /**
     * 获取
     * @return orderPhone
     */
    public String getOrderPhone() {
        return orderPhone;
    }

    /**
     * 设置
     * @param orderPhone
     */
    public void setOrderPhone(String orderPhone) {
        this.orderPhone = orderPhone;
    }

    /**
     * 获取
     * @return orderNation
     */
    public String getOrderNation() {
        return orderNation;
    }

    /**
     * 设置
     * @param orderNation
     */
    public void setOrderNation(String orderNation) {
        this.orderNation = orderNation;
    }

    /**
     * 获取
     * @return orderAddress
     */
    public String getOrderAddress() {
        return orderAddress;
    }

    /**
     * 设置
     * @param orderAddress
     */
    public void setOrderAddress(String orderAddress) {
        this.orderAddress = orderAddress;
    }

    /**
     * 获取
     * @return orderPaymentMode
     */
    public String getOrderPaymentMode() {
        return orderPaymentMode;
    }

    /**
     * 设置
     * @param orderPaymentMode
     */
    public void setOrderPaymentMode(String orderPaymentMode) {
        this.orderPaymentMode = orderPaymentMode;
    }

    /**
     * 获取
     * @return orderPriceTotal
     */
    public Double getOrderPriceTotal() {
        return orderPriceTotal;
    }

    /**
     * 设置
     * @param orderPriceTotal
     */
    public void setOrderPriceTotal(Double orderPriceTotal) {
        this.orderPriceTotal = orderPriceTotal;
    }

    /**
     * 获取
     * @return userId
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * 设置
     * @param userId
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /**
     * 获取
     * @return state
     */
    public String getState() {
        return state;
    }

    /**
     * 设置
     * @param state
     */
    public void setState(String state) {
        this.state = state;
    }

    public String toString() {
        return "Order{orderId = " + orderId + ", orderUsername = " + orderUsername + ", orderPhone = " + orderPhone + ", orderNation = " + orderNation + ", orderAddress = " + orderAddress + ", orderPaymentMode = " + orderPaymentMode + ", orderPriceTotal = " + orderPriceTotal + ", userId = " + userId + ", state = " + state + "}";
    }
}
