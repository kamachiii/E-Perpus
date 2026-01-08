<%@page import="java.util.*"%>
<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-4">
    <%
        // Mengambil data dari session agar tersambung dengan proses tambah/hapus
        List<String> list = (List<String>) session.getAttribute("wishlist_data");
        
        if (list != null && !list.isEmpty()) {
            for (String item : list) {
    %>
            <div class="col">
                <div class="card card-custom h-100 position-relative shadow-sm border-0" style="border-radius: 16px;">
                    
                    <a href="wishlist_hapus.jsp?judul=<%= item %>" 
                       class="btn btn-light position-absolute top-0 end-0 m-3 shadow-sm rounded-circle d-flex align-items-center justify-content-center" 
                       style="width: 35px; height: 35px; z-index: 10; color: #dc3545; border: none;">
                        <i class="fas fa-heart"></i>
                    </a>
                    
                    <div style="height: 240px; background-color: #e9ecef; border-top-left-radius: 16px; border-top-right-radius: 16px; display: flex; align-items: center; justify-content: center;">
                        <i class="fas fa-rocket fa-3x text-muted"></i>
                    </div>

                    <div class="card-body">
                        <h5 class="card-title fw-bold mb-1"><%= item %></h5>
                        <p class="card-text text-muted small mb-3">Author Info</p>
                        
                        <button class="btn btn-primary-custom w-100 btn-sm" 
                                onclick="mockBorrow('<%= item %>', 'Author');">
                            Borrow Now
                        </button>
                    </div>
                </div>
            </div>
    <%
            }
        } else {
    %>
            <div class="col-12 text-center py-5">
                <p class="text-muted">Wishlist Anda kosong.</p>
                <a href="index.jsp" class="btn btn-primary-custom btn-sm">Cari Buku Lagi</a>
            </div>
    <%
        }
    %>
</div>