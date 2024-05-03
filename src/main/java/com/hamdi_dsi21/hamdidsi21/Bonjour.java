package com.hamdi_dsi21.hamdidsi21;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import com.hamdi_dsi21.hamdidsi21.models.Student;
import com.hamdi_dsi21.hamdidsi21.models.StudentDao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "bonjour", value = "/bonjour")
public class Bonjour extends HttpServlet {
    //String[] Students ;
    //int nbrStudent = 0;

    List<Student> students = new ArrayList<Student>();
    StudentDao stdDao = new StudentDao();
    String Message;
    int StudentCount;

    public Bonjour(){
        /*this.Students = new String[10];
        this.Students[0] = "Salah" ; nbrStudent++ ;
        this.Students[1] = "Amar"; nbrStudent++ ;
        this.Students[2] = "Fatma"; nbrStudent++ ; */
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String message = "Liste des étudiants" ;
        request.setAttribute("message",message);

        this.students = this.stdDao.listStudents();
        request.setAttribute("Students",students);

        this.getServletContext().getRequestDispatcher("/bonjour.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nom = (String) req.getParameter("nom");
        //Students[nbrStudent] = nom;
        //nbrStudent++ ;

        //req.setAttribute("Students", Students);
        //req.setAttribute("nbrStudent", nbrStudent);

        stdDao.addStudent(new Student(req.getParameter("Nom"),
                Integer.parseInt(req.getParameter("Age"))));
        this.students = this.stdDao.listStudents();
        this.StudentCount = this.students.size();

        req.setAttribute("Message", this.Message);
        req.setAttribute("Students", this.students);
        req.setAttribute("StudentCount", this.StudentCount);

        HttpSession session = req.getSession();
        session.setAttribute("nom", nom);
        this.getServletContext().getRequestDispatcher("/bonjour.jsp").forward(req,resp);
    }
}