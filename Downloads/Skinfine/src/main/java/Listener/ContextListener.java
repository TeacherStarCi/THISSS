package Listener;
import Repository.Advertisement.AdvertisementDAO;
import Repository.Advertisement.AdvertiserDTO;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import java.sql.SQLException;
import java.util.List;

public class ContextListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext context = sce.getServletContext();
     List<AdvertiserDTO> ads = null;
        try {
            ads = AdvertisementDAO.getAdvertiser();
        } catch (SQLException | ClassNotFoundException ex) { }
        context.setAttribute("ads",ads);
    }
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
