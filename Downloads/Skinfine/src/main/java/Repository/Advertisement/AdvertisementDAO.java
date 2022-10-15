package Repository.Advertisement;

import Support.DatabaseConnector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AdvertisementDAO {

    public static List<AdvertisementDTO> getAds() throws SQLException, ClassNotFoundException {
        String SQL = "SELECT CosmeticID, CosmeticName, Category, AdvertiserName, UnitPrice, Photo,\n"
                + "SkinType, BrandName, Description, Usage\n"
                + "FROM Cosmetic INNER JOIN Advertiser\n"
                + "ON Cosmetic.AdvertiserID = Advertiser.AdvertiserID";
        List<AdvertisementDTO> ads = new ArrayList<>();
        Connection con = null;
        PreparedStatement pre = null;

        ResultSet res = null;
        try {
            con = DatabaseConnector.makeConnection();
            pre = con.prepareStatement(SQL);
            res = pre.executeQuery();

            while (res.next()) {
                String cosmeticID = res.getString("CosmeticID");
                String cosmeticName = res.getString("CosmeticName");
                String category = res.getString("Category");
                String advertiserName = res.getString("AdvertiserName");
                float unitPrice = res.getFloat("UnitPrice");
                String photo = res.getString("Photo");
                String usage = res.getString("Usage");
                String skinType = res.getString("SkinType");
                String brandName = res.getString("BrandName");
                String description = res.getString("Description");
                
             
                ads.add(new AdvertisementDTO(cosmeticID, cosmeticName, brandName, category, advertiserName, unitPrice, photo, usage, skinType, description));
            }   
        } finally {
            if (con != null) {
                con.close();
            }

            if (pre != null) {
                pre.close();
            }

            if (res != null) {
                res.close();
            }

        }
        return ads;

    }
}
