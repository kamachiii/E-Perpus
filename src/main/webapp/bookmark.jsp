<%@page import="java.util.*"%>
<%@include file="WEB-INF/header.jsp" %>

<h2>Daftar Bookmark Anda</h2>
<p>Berikut adalah buku yang Anda simpan untuk dibaca nanti:</p>

<ul style="background: #f9f9f9; padding: 20px; border-radius: 8px; list-style-type: square;">
    <%
        // Ambil data dari session
        List<String> list = (List<String>) session.getAttribute("bookmarks");
        
        if (list != null && !list.isEmpty()) {
            for (String buku : list) {
    %>
                <li style="margin-bottom: 10px; font-size: 18px;">
                    <strong><%= buku %></strong> 
                    <small>(Tersimpan)</small>
                </li>
    <%
            }
        } else {
    %>
            <li style="color: red;">Belum ada buku yang disimpan.</li>
    <%
        }
    %>
</ul>

<br>
<a href="index.jsp" style="text-decoration: none; background: #2c3e50; color: white; padding: 10px 20px; border-radius: 5px;">
     Kembali ke Dashboard
</a>

<%@include file="WEB-INF/footer.jsp" %>