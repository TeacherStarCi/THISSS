package Repository.Advertisement;

import Repository.Register.RegisterDTO;
import Support.DatabaseConnector;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AdvertisementDAO {

    public static List<AdvertiserDTO> getAdvertiser() throws SQLException, ClassNotFoundException {
        String SQL1 = "SELECT advertiserID, advertiserName FROM Advertiser";
        String SQL2 = "SELECT * FROM Cosmetic WHERE advertiserID = ?";

        List<AdvertiserDTO> ads = new ArrayList<>();
        Connection con = null;
        PreparedStatement pre = null;
        PreparedStatement pre2 = null;
        ResultSet res = null;
        ResultSet res2 = null;
        try {
            con = DatabaseConnector.makeConnection();
            pre = con.prepareStatement(SQL1);
            res = pre.executeQuery();

            while (res.next()) {
                String advertiserName = res.getString("AdvertiserName");
                String advertiserID = res.getString("AdvertiserID");
                List<CosmeticDTO> cosmetics = new ArrayList<>();
                pre2 = con.prepareStatement(SQL2);
                pre2.setString(1, advertiserID);
                res2 = pre2.executeQuery();
                while (res2.next()) {
                    String cosmeticID = res2.getString("cosmeticID");
                    String cosmeticName = res2.getString("cosmeticName");
                    String category = res2.getString("category");
                    float unitPrice = res2.getFloat("unitPrice");
                    String photo = res2.getString("photo");
                    String usage = res2.getString("usage");
                    String skinType = res2.getString("skinType");
                    String brandName = res2.getString("brandName");
                    String description = res2.getString("description");
                    CosmeticDTO cosmetic = new CosmeticDTO(cosmeticID, cosmeticName, category, advertiserID, unitPrice, photo, usage, skinType, brandName, description);
                    cosmetics.add(cosmetic);
                }
                ads.add(new AdvertiserDTO(advertiserName, cosmetics));

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
