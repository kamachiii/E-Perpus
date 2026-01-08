<%@page import="java.util.*"%>
<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-4">
    <%
        // Mengambil data dari session
        List<String> list = (List<String>) session.getAttribute("wishlist_data");
        
        if (list != null && !list.isEmpty()) {
            for (String item : list) {
    %>
            <div class="col">
                <div class="card card-custom h-100 position-relative shadow-sm border-0">
                    <a href="wishlist_hapus.jsp?judul=<%= item %>" 
                       class="btn btn-light position-absolute top-0 end-0 m-3 shadow-sm rounded-circle text-danger d-flex align-items-center justify-content-center" 
                       style="width: 32px; height: 32px; z-index: 10;">
                        <i class="fas fa-heart"></i>
                    </a>
                    
                    <div style="height: 240px; background-color: #e9ecef; border-top-left-radius: 16px; border-top-right-radius: 16px; overflow: hidden;">
                         <div class="d-flex align-items-center justify-content-center h-100 text-muted">
                            <i class="fas fa-book fa-3x"></i>
                         </div>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title fw-bold mb-1"><%= item %></h5>
                        <p class="card-text text-muted small mb-3">Author Info</p>
                        <button class="btn btn-primary-custom w-100 btn-sm" onclick="mockBorrow('<%= item %>', 'Author');">Borrow Now</button>
                    </div>
                </div>
            </div>
    <%
            }
        } else {
    %>
            <div class="col-12 text-center py-5">
                <i class="far fa-heart fa-4x text-muted mb-3"></i>
                <p class="text-muted">Wishlist Anda masih kosong.</p>
                <a href="index.jsp" class="btn btn-primary-custom btn-sm">Cari Buku</a>
            </div>
    <%
        }
    %>
</div>