package bean;

public class Order {
    private String order_id;
    private String order_username;
    private String order_phone;
    private String order_nation;
    private String order_address;
    private Integer order_paymentMode;
    private Double order_priceTotal;
    private Integer user_id;
    private String state;


    public Order() {
    }

    public Order(String order_id, String order_username, String order_phone, String order_nation, String order_address, Integer order_paymentMode, Double order_priceTotal, Integer user_id, String state) {
        this.order_id = order_id;
        this.order_username = order_username;
        this.order_phone = order_phone;
        this.order_nation = order_nation;
        this.order_address = order_address;
        this.order_paymentMode = order_paymentMode;
        this.order_priceTotal = order_priceTotal;
        this.user_id = user_id;
        this.state = state;
    }

    /**
     * 获取
     * @return order_id
     */
    public String getOrder_id() {
        return order_id;
    }

    /**
     * 设置
     * @param order_id
     */
    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    /**
     * 获取
     * @return order_username
     */
    public String getOrder_username() {
        return order_username;
    }

    /**
     * 设置
     * @param order_username
     */
    public void setOrder_username(String order_username) {
        this.order_username = order_username;
    }

    /**
     * 获取
     * @return order_phone
     */
    public String getOrder_phone() {
        return order_phone;
    }

    /**
     * 设置
     * @param order_phone
     */
    public void setOrder_phone(String order_phone) {
        this.order_phone = order_phone;
    }

    /**
     * 获取
     * @return order_nation
     */
    public String getOrder_nation() {
        return order_nation;
    }

    /**
     * 设置
     * @param order_nation
     */
    public void setOrder_nation(String order_nation) {
        this.order_nation = order_nation;
    }

    /**
     * 获取
     * @return order_address
     */
    public String getOrder_address() {
        return order_address;
    }

    /**
     * 设置
     * @param order_address
     */
    public void setOrder_address(String order_address) {
        this.order_address = order_address;
    }

    /**
     * 获取
     * @return order_paymentMode
     */
    public Integer getOrder_paymentMode() {
        return order_paymentMode;
    }

    /**
     * 设置
     * @param order_paymentMode
     */
    public void setOrder_paymentMode(Integer order_paymentMode) {
        this.order_paymentMode = order_paymentMode;
    }

    /**
     * 获取
     * @return order_priceTotal
     */
    public Double getOrder_priceTotal() {
        return order_priceTotal;
    }

    /**
     * 设置
     * @param order_priceTotal
     */
    public void setOrder_priceTotal(Double order_priceTotal) {
        this.order_priceTotal = order_priceTotal;
    }

    /**
     * 获取
     * @return user_id
     */
    public Integer getUser_id() {
        return user_id;
    }

    /**
     * 设置
     * @param user_id
     */
    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
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
        return "Order{order_id = " + order_id + ", order_username = " + order_username + ", order_phone = " + order_phone + ", order_nation = " + order_nation + ", order_address = " + order_address + ", order_paymentMode = " + order_paymentMode + ", order_priceTotal = " + order_priceTotal + ", user_id = " + user_id + ", state = " + state + "}";
    }
}
