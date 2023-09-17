package bean;

public class CartItem {
    private Integer cartId;
    private Integer flowerId;
    private String flowerName;
    private Integer flowerNumber;
    private Double flowerPrice;
    private String flowerImgPath = "img/product/1.png";
    private Integer userId;


    public CartItem() {
    }

    public CartItem(Integer cartId, Integer flowerId, String flowerName, Integer flowerNumber, Double flowerPrice, String flowerImgPath, Integer userId) {
        this.cartId = cartId;
        this.flowerId = flowerId;
        this.flowerName = flowerName;
        this.flowerNumber = flowerNumber;
        this.flowerPrice = flowerPrice;
        this.flowerImgPath = flowerImgPath;
        this.userId = userId;
    }

    /**
     * 获取
     * @return cartId
     */
    public Integer getCartId() {
        return cartId;
    }

    /**
     * 设置
     * @param cartId
     */
    public void setCartId(Integer cartId) {
        this.cartId = cartId;
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
     * @return flowerName
     */
    public String getFlowerName() {
        return flowerName;
    }

    /**
     * 设置
     * @param flowerName
     */
    public void setFlowerName(String flowerName) {
        this.flowerName = flowerName;
    }

    /**
     * 获取
     * @return flowerNumber
     */
    public Integer getFlowerNumber() {
        return flowerNumber;
    }

    /**
     * 设置
     * @param flowerNumber
     */
    public void setFlowerNumber(Integer flowerNumber) {
        this.flowerNumber = flowerNumber;
    }

    /**
     * 获取
     * @return flowerPrice
     */
    public Double getFlowerPrice() {
        return flowerPrice;
    }

    /**
     * 设置
     * @param flowerPrice
     */
    public void setFlowerPrice(Double flowerPrice) {
        this.flowerPrice = flowerPrice;
    }

    /**
     * 获取
     * @return flowerImgPath
     */
    public String getFlowerImgPath() {
        return flowerImgPath;
    }

    /**
     * 设置
     * @param flowerImgPath
     */
    public void setFlowerImgPath(String flowerImgPath) {
        this.flowerImgPath = flowerImgPath;
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

    public String toString() {
        return "CartItem{cartId = " + cartId + ", flowerId = " + flowerId + ", flowerName = " + flowerName + ", flowerNumber = " + flowerNumber + ", flowerPrice = " + flowerPrice + ", flowerImgPath = " + flowerImgPath + ", userId = " + userId + "}";
    }
}