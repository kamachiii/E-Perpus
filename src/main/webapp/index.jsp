<%@page import="java.sql.*"%>
<%-- Memanggil potongan header --%>
<%@include file="WEB-INF/header.jsp" %>

<div style="margin-top: 20px;">
    <h2>Dashboard: List Buku</h2>
    
    <form action="index.jsp" method="GET" style="margin-bottom: 20px;">
        <input type="text" name="search" placeholder="Cari judul buku..." style="padding: 5px; width: 250px;">
        <button type="submit">Cari</button>
    </form>

    <table border="1" style="width: 100%; border-collapse: collapse;">
        <tr style="background-color: #f2f2f2;">
            <th>Judul</th>
            <th>Penulis</th>
            <th>Kategori (JOIN)</th>
            <th>Rating (AVG)</th>
        </tr>
        <%
            try {
                // Koneksi ke PostgreSQL
                Class.forName("org.postgresql.Driver");
                Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/dbperpus", "postgres", "password_kamu");

                String search = request.getParameter("search");
                
                // Query JOIN sesuai catatan teknis tugas Satya
                String sql = "SELECT b.title, b.author, c.name AS cat_name, AVG(b.rating) as avg_rating " +
                             "FROM books b JOIN categories c ON b.category_id = c.id ";
                
                if(search != null && !search.isEmpty()){
                    sql += "WHERE b.title ILIKE '%" + search + "%' ";
                }
                sql += "GROUP BY b.id, c.name";

                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery(sql);

                while(rs.next()){
        %>
        <tr>
            <td><%= rs.getString("title") %></td>
            <td><%= rs.getString("author") %></td>
            <td><%= rs.getString("cat_name") %></td>
            <td><%= rs.getString("avg_rating") %></td>
        </tr>
        <%
                }
                conn.close();
            } catch (Exception e) {
                out.print("Data belum muncul: " + e.getMessage());
            }
        %>
    </table>
</div>

<%-- Memanggil potongan footer --%>
<%@include file="WEB-INF/footer.jsp" %>
</html>
