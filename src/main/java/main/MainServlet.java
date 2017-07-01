package main;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Pavel on 01.07.2017.
 */

public class MainServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doGet(req, resp);
        PrintWriter pr=resp.getWriter();
        pr.print("xuie maey хуе мае");
//        req.se("atr-test", "znachenie");
        getServletContext().getRequestDispatcher("/catalog").forward(req,resp);
    }
}
