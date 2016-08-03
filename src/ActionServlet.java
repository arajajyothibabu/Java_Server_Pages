import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Araja Jyothi Babu on 03-Aug-16.
 */
@WebServlet
public class ActionServlet extends HttpServlet{

    private static final long serialVersionUID = 1L;

    public ActionServlet() {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = null;
        String requestedNumber = request.getParameter("user-number").toString();
        if (requestedNumber.equals("")) {
            name = "";
        }else if(requestedNumber.equals("505")){
            name = "Jyothi Babu Araja"; //TODO: remove this after DB connection
        }else{
            //FIXME: Make you database query here to find user number existence
            name = "No Name Found";
        }
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(name);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}