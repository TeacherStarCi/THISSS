package Repository.Advertisement;

public class CosmeticDTO {

    private String cosmeticID;
    private String cosmeticName;
    private String category;
    private String advertiserID;
    private float unitPrice;
    private String photo;
    private String usage;
    private String skinType;
    private String brandName;
    private String description;

    public CosmeticDTO(String cosmeticID, String cosmeticName, String category, String advertiserID, float unitPrice, String photo, String usage, String skinType, String brandName, String description) {
        this.cosmeticID = cosmeticID;
        this.cosmeticName = cosmeticName;
        this.category = category;
        this.advertiserID = advertiserID;
        this.unitPrice = unitPrice;
        this.photo = photo;
        this.usage = usage;
        this.skinType = skinType;
        this.brandName = brandName;
        this.description = description;
    }

    
    
    public String getCosmeticID() {
        return cosmeticID;
    }

    @Override
    public String toString() {
        return "CosmeticDTO{" + "cosmeticID=" + cosmeticID + ", cosmeticName=" + cosmeticName + ", category=" + category + ", advertiserID=" + advertiserID + ", unitPrice=" + unitPrice + ", photo=" + photo + ", usage=" + usage + ", skinType=" + skinType + ", brandName=" + brandName + ", description=" + description + '}';
    }

    public void setCosmeticID(String cosmeticID) {
        this.cosmeticID = cosmeticID;
    }

    public String getCosmeticName() {
        return cosmeticName;
    }

    public void setCosmeticName(String cosmeticName) {
        this.cosmeticName = cosmeticName;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getAdvertiserID() {
        return advertiserID;
    }

    public void setAdvertiserID(String advertiserID) {
        this.advertiserID = advertiserID;
    }

    public float getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(float unitPrice) {
        this.unitPrice = unitPrice;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getUsage() {
        return usage;
    }

    public void setUsage(String usage) {
        this.usage = usage;
    }

    public String getSkinType() {
        return skinType;
    }

    public void setSkinType(String skinType) {
        this.skinType = skinType;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

   
}
