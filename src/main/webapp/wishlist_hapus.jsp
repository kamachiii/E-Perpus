<%@page import="java.util.*"%>
<%
    String judulHapus = request.getParameter("judul");
    if (judulHapus != null) {
        List<String> wishlist = (List<String>) session.getAttribute("wishlist_data");
        if (wishlist != null) {
            wishlist.remove(judulHapus);
            session.setAttribute("wishlist_data", wishlist);
        }
    }
    response.sendRedirect("wishlist.jsp");
%>