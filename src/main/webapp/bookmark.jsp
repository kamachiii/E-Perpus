<%@page import="java.util.*"%>
<%@include file="WEB-INF/header.jsp" %>

<div style="padding: 20px;">
    <h2>Daftar Buku Favorit</h2>
    <ul>
        <%
            List<String> list = (List<String>) session.getAttribute("bookmarks");
            if (list != null && !list.isEmpty()) {
                for (String buku : list) {
        %>
                    <li><%= buku %></li>
        <%
                }
            } else {
                out.print("<li>Belum ada buku yang disimpan.</li>");
            }
        %>
    </ul>
    <br>
    <a href="index.jsp"> Kembali ke Dashboard</a>
</div>

<%@include file="WEB-INF/footer.jsp" %>