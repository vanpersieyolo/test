package Model;

public class Product {
    int productId;
    int categoryId;
    String productName;
    String productDescription;

    public Product(int productId, int categoryId, String productName, String productDescription) {
        this.productId = productId;
        this.categoryId = categoryId;
        this.productName = productName;
        this.productDescription = productDescription;
    }

    public Product() {
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }
}
