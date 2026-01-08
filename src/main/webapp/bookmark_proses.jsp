<%@page import="java.util.*"%>
<%
    // 1. Ambil judul dari link yang diklik
    String judul = request.getParameter("judul");
    
    if (judul != null && !judul.isEmpty()) {
        // 2. Ambil list dari session
        List<String> list = (List<String>) session.getAttribute("bookmarks");
        if (list == null) {
            list = new ArrayList<>();
        }
        
        // 3. Tambahkan jika belum ada
        if (!list.contains(judul)) {
            list.add(judul);
        }
        
        // 4. Simpan kembali ke session
        session.setAttribute("bookmarks", list);
    }
    
    // 5. Lempar ke halaman tampilan bookmark
    response.sendRedirect("bookmark.jsp");
%>