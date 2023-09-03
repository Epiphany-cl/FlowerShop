package bean;

public class FlowerDetail {
    private Integer flowerId;
    private String flowerName;
    private Double listPrice;
    private Double sellingPrice;
    private String flowerImgPath;
    private String describe;
    private String describeDetail;
    private String categories;
    private String tags;
    private String photoAlbum;


    public FlowerDetail() {
    }

    public FlowerDetail(Integer flowerId, String flowerName, Double listPrice, Double sellingPrice, String flowerImgPath, String describe, String describeDetail, String categories, String tags, String photoAlbum) {
        this.flowerId = flowerId;
        this.flowerName = flowerName;
        this.listPrice = listPrice;
        this.sellingPrice = sellingPrice;
        this.flowerImgPath = flowerImgPath;
        this.describe = describe;
        this.describeDetail = describeDetail;
        this.categories = categories;
        this.tags = tags;
        this.photoAlbum = photoAlbum;
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
     * @return listPrice
     */
    public Double getListPrice() {
        return listPrice;
    }

    /**
     * 设置
     * @param listPrice
     */
    public void setListPrice(Double listPrice) {
        this.listPrice = listPrice;
    }

    /**
     * 获取
     * @return sellingPrice
     */
    public Double getSellingPrice() {
        return sellingPrice;
    }

    /**
     * 设置
     * @param sellingPrice
     */
    public void setSellingPrice(Double sellingPrice) {
        this.sellingPrice = sellingPrice;
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
     * @return describe
     */
    public String getDescribe() {
        return describe;
    }

    /**
     * 设置
     * @param describe
     */
    public void setDescribe(String describe) {
        this.describe = describe;
    }

    /**
     * 获取
     * @return describeDetail
     */
    public String getDescribeDetail() {
        return describeDetail;
    }

    /**
     * 设置
     * @param describeDetail
     */
    public void setDescribeDetail(String describeDetail) {
        this.describeDetail = describeDetail;
    }

    /**
     * 获取
     * @return categories
     */
    public String getCategories() {
        return categories;
    }

    /**
     * 设置
     * @param categories
     */
    public void setCategories(String categories) {
        this.categories = categories;
    }

    /**
     * 获取
     * @return tags
     */
    public String getTags() {
        return tags;
    }

    /**
     * 设置
     * @param tags
     */
    public void setTags(String tags) {
        this.tags = tags;
    }

    /**
     * 获取
     * @return photoAlbum
     */
    public String getPhotoAlbum() {
        return photoAlbum;
    }

    /**
     * 设置
     * @param photoAlbum
     */
    public void setPhotoAlbum(String photoAlbum) {
        this.photoAlbum = photoAlbum;
    }

    public String toString() {
        return "FlowerDetail{flowerId = " + flowerId + ", flowerName = " + flowerName + ", listPrice = " + listPrice + ", sellingPrice = " + sellingPrice + ", flowerImgPath = " + flowerImgPath + ", describe = " + describe + ", describeDetail = " + describeDetail + ", categories = " + categories + ", tags = " + tags + ", photoAlbum = " + photoAlbum + "}";
    }
}