<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // Mengambil parameter judul buku dari URL
    String judul = request.getParameter("judul");
    
    if (judul != null && !judul.isEmpty()) {
        // Mengambil daftar wishlist dari session
        List<String> wishlist = (List<String>) session.getAttribute("wishlist_data");
        
        if (wishlist == null) {
            wishlist = new ArrayList<>();
        }
        
        // Tambahkan ke daftar jika buku tersebut belum ada
        if (!wishlist.contains(judul)) {
            wishlist.add(judul);
        }
        
        // Simpan kembali ke session agar bisa dibaca di halaman wishlist.jsp
        session.setAttribute("wishlist_data", wishlist);
    }
    
    // Alihkan halaman ke wishlist.jsp untuk melihat hasilnya
    response.sendRedirect("wishlist.jsp");
%>