package bean;

import java.util.List;

public class OrderDetailInfo {
    private String orderId;
    private List<CartItem> items;
    private Double priceTotal;


    public OrderDetailInfo() {
    }

    public OrderDetailInfo(String orderId, List<CartItem> items, Double priceTotal) {
        this.orderId = orderId;
        this.items = items;
        this.priceTotal = priceTotal;
    }


    public String getOrderId() {
        return orderId;
    }


    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }


    public List<CartItem> getItems() {
        return items;
    }


    public void setItems(List<CartItem> items) {
        this.items = items;
    }


    public Double getPriceTotal() {
        return priceTotal;
    }


    public void setPriceTotal(Double priceTotal) {
        this.priceTotal = priceTotal;
    }

    public String toString() {
        return "OrderDetailInfo{orderId = " + orderId + ", items = " + items + ", priceTotal = " + priceTotal + "}";
    }
}
