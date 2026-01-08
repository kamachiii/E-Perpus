<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wishlist - E-Library</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

    <%@include file="includes/navbar.jsp" %>

    <div class="container py-4">
        <div class="d-flex align-items-center justify-content-between mb-4">
            <h3 class="fw-bold mb-0">My Wishlist <i class="fas fa-heart text-danger ms-2"></i></h3>
            <button class="btn btn-outline-secondary rounded-pill btn-sm">Clear All</button>
        </div>

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
                           style="width: 32px; height: 32px; z-index: 10; padding: 0;">
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
                    <p class="text-muted">Wishlist Anda kosong. Belum ada buku yang ditambahkan.</p>
                </div>
            <%
                }
            %>
        </div>
    </div>

    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/app.js"></script>
</body>
</html>