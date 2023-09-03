package bean;

public class Flower {
    private Integer flowerId;
    private String flowerName;
    private Double listPrice;
    private Double sellingPrice;
    private String flowerImgPath = "img/product/1.png";


    public Flower() {
    }

    public Flower(Integer flowerId, String flowerName, Double listPrice, Double sellingPrice, String flowerImgPath) {
        this.flowerId = flowerId;
        this.flowerName = flowerName;
        this.listPrice = listPrice;
        this.sellingPrice = sellingPrice;
        this.flowerImgPath = flowerImgPath;
    }

    public Integer getFlowerId() {
        return flowerId;
    }

    public void setFlowerId(Integer flowerId) {
        this.flowerId = flowerId;
    }

    public String getFlowerName() {
        return flowerName;
    }

    public void setFlowerName(String flowerName) {
        this.flowerName = flowerName;
    }

    public Double getListPrice() {
        return listPrice;
    }


    public void setListPrice(Double listPrice) {
        this.listPrice = listPrice;
    }


    public Double getSellingPrice() {
        return sellingPrice;
    }


    public void setSellingPrice(Double sellingPrice) {
        this.sellingPrice = sellingPrice;
    }


    public String getFlowerImgPath() {
        return flowerImgPath;
    }


    public void setFlowerImgPath(String flowerImgPath) {
        this.flowerImgPath = flowerImgPath;
    }

    public String toString() {
        return "Flower{flowerId = " + flowerId + ", flowerName = " + flowerName + ", listPrice = " + listPrice + ", sellingPrice = " + sellingPrice + ", flowerImgPath = " + flowerImgPath + "}";
    }
}
