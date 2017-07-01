package main;

import main.dao.ContactDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Pavel on 01.07.2017.
 */
public class Catalog extends HttpServlet{

    private ContactDao contactDao = new ContactDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter pr=resp.getWriter();
        pr.print("Catalog");
        pr.print("<br>");
        pr.print(req.getParameter("atr-test"));
        req.setAttribute("title", "asdasd");
        req.setAttribute("contactList",contactDao.get());
        getServletContext().getRequestDispatcher("/pages/catalog.jsp").forward(req,resp);
    }
}
