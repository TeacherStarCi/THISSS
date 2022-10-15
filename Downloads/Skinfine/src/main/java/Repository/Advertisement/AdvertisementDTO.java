package Repository.Advertisement;

public class AdvertisementDTO {

    private String cosmeticID;
    private String cosmeticName;
    private String brandName;
    private String category;
    private String advertiserName;
    private float unitPrice;
    private String photo;
    private String usage;
    private String skinType;
    private String description;

    public String getCosmeticID() {
        return cosmeticID;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public AdvertisementDTO(String cosmeticID, String cosmeticName, String brandName, String category, String advertiserName, float unitPrice, String photo, String usage, String skinType, String description) {
        this.cosmeticID = cosmeticID;
        this.cosmeticName = cosmeticName;
        this.brandName = brandName;
        this.category = category;
        this.advertiserName = advertiserName;
        this.unitPrice = unitPrice;
        this.photo = photo;
        this.usage = usage;
        this.skinType = skinType;
        this.description = description;
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

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public String getAdvertiserName() {
        return advertiserName;
    }

    public void setAdvertiserName(String advertiserName) {
        this.advertiserName = advertiserName;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public AdvertisementDTO() {
    }

    @Override
    public String toString() {
        return "AdvertisementDTO{" + "cosmeticID=" + cosmeticID + ", cosmeticName=" + cosmeticName + ", brandName=" + brandName + ", category=" + category + ", advertiserName=" + advertiserName + ", unitPrice=" + unitPrice + ", photo=" + photo + ", usage=" + usage + ", skinType=" + skinType + ", description=" + description + '}';
    }

   
    

}
