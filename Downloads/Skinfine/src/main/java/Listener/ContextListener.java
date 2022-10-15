package Listener;
import Repository.Advertisement.AdvertisementDAO;
import Repository.Advertisement.AdvertisementDTO;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ContextListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext context = sce.getServletContext();
    String realPath =  context.getRealPath("");
     List<AdvertisementDTO> ads = null;
        try {
            ads = AdvertisementDAO.getAds();
        } catch (SQLException | ClassNotFoundException ex) { }
        context.setAttribute("ads",ads);
    }
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
