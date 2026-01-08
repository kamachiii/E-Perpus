<%@page import="java.util.*"%>
<%
    // Menangkap judul yang dikirim dari tombol cancel
    String judulHapus = request.getParameter("judul");
    
    if (judulHapus != null) {
        List<String> wishlist = (List<String>) session.getAttribute("wishlist_data");
        if (wishlist != null) {
            // Menghapus buku dari daftar memori session
            wishlist.remove(judulHapus);
            session.setAttribute("wishlist_data", wishlist);
        }
    }
    
    // Kembali ke halaman wishlist untuk melihat perubahan
    response.sendRedirect("wishlist.jsp");
%>