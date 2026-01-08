/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dao.UserDAO;
import model.User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author hengk
 */
@WebServlet(name = "AuthServlet", urlPatterns = {"/auth"})
public class AuthServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");
        UserDAO userDAO = new UserDAO();

        if ("login".equals(action)) {
            // 1. Ambil data dari form [cite: 296]
            String uName = request.getParameter("username");
            String uPass = request.getParameter("password");

            // 2. Panggil DAO
            User user = userDAO.login(uName, uPass);

            if (user != null) {
                // 3. Login Sukses: Buat Session [cite: 441]
                HttpSession session = request.getSession();
                session.setAttribute("currentUser", user); // Simpan objek user ke session
                
                // Redirect berdasarkan role (Opsional)
                response.sendRedirect("index.jsp"); 
            } else {
                // 4. Login Gagal
                response.sendRedirect("login.jsp?error=invalid");
            }

        } else if ("register".equals(action)) {
            // Logika Register
            User newUser = new User();
            newUser.setUsername(request.getParameter("username"));
            newUser.setPassword(request.getParameter("password"));
            newUser.setFullName(request.getParameter("fullname"));
            newUser.setRole("member"); // Default role

            if(userDAO.register(newUser)) {
                response.sendRedirect("login.jsp?msg=registered");
            } else {
                response.sendRedirect("register.jsp?error=failed");
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");
        if ("logout".equals(action)) {
            // Logika Logout
            HttpSession session = request.getSession(false);
            if (session != null) {
                session.invalidate(); // Hapus session [cite: 452]
            }
            response.sendRedirect("login.jsp");
        }
    }
}