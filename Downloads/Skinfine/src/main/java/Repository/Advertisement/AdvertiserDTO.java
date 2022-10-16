
package Repository.Advertisement;

import java.util.List;

public class AdvertiserDTO {
    private String avertiserName;
    private List<CosmeticDTO> cosmetics;

    public String getAvertiserName() {
        return avertiserName;
    }

    public void setAvertiserName(String avertiserName) {
        this.avertiserName = avertiserName;
    }

    public List<CosmeticDTO> getCosmetics() {
        return cosmetics;
    }

    public void setCosmetics(List<CosmeticDTO> cosmetics) {
        this.cosmetics = cosmetics;
    }

    public AdvertiserDTO(String avertiserName, List<CosmeticDTO> cosmetics) {
        this.avertiserName = avertiserName;
        this.cosmetics = cosmetics;
    }

    @Override
    public String toString() {
        return "AdvertiserDTO{" + "avertiserName=" + avertiserName + ", cosmetics=" + cosmetics + '}';
    }
    
    
}
