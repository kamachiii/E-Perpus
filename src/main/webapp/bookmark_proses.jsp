<%@page import="java.util.*"%>
<%
    // 1. Ambil judul buku dari link yang diklik di index.jsp
    String judul = request.getParameter("judul");
    
    if (judul != null && !judul.isEmpty()) {
        // 2. Ambil daftar bookmark yang sudah ada di session
        List<String> myBookmarks = (List<String>) session.getAttribute("bookmarks");
        
        // 3. Jika belum ada (pertama kali), buat list baru
        if (myBookmarks == null) {
            myBookmarks = new ArrayList<>();
        }
        
        // 4. Masukkan judul buku ke list jika belum ada di dalam list
        if (!myBookmarks.contains(judul)) {
            myBookmarks.add(judul);
        }
        
        // 5. Simpan kembali ke session
        session.setAttribute("bookmarks", myBookmarks);
    }
    
    // 6. Lempar kembali ke halaman bookmark untuk melihat hasilnya
    response.sendRedirect("bookmark.jsp");
%>