<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="WEB-INF/header.jsp" %>

<div style="margin-top: 20px; padding: 20px;">
    <h2>Dashboard: List Buku</h2>
    
    <table border="1" style="width: 100%; border-collapse: collapse;">
        <tr style="background-color: #f2f2f2;">
            <th>Judul</th>
            <th>Penulis</th>
            <th>Kategori</th>
            <th>Rating</th>
            <th>Aksi</th> </tr>
        <%
    try {
        Class.forName("org.postgresql.Driver");
        // Gunakan password 123 Anda
        Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/dbperpus", "postgres", "123");

        // Query yang sudah diperbaiki: Menghapus b.rating agar tidak error
        String sql = "SELECT b.title, b.author, c.name AS cat_name FROM books b JOIN categories c ON b.category_id = c.id";

        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(sql);

        while(rs.next()){
            String judulBuku = rs.getString("title");
%>
        <tr>
            <td><%= judulBuku %></td>
            <td><%= rs.getString("author") %></td>
            <td><%= rs.getString("cat_name") %></td>
            <td>-</td> <td>
                <a href="bookmark_proses.jsp?judul=<%= judulBuku %>" style="color: blue;">❤ Simpan</a>
            </td>
        </tr>
<% 
        } 
        conn.close(); 
    } catch (Exception e) { 
        out.print("Ada masalah: " + e.getMessage()); 
    } 
%>
    </table>
</div>

<%@include file="WEB-INF/footer.jsp" %>