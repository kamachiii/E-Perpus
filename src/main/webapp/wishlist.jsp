<%-- 
    Document   : wishlist
    Created on : Jan 7, 2026, 7:43:02 AM
    Author     : hengk
--%>

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

            <!-- Book Card 1 -->
            <div class="col">
                <div class="card card-custom h-100 position-relative">
                    <button class="btn btn-light position-absolute top-0 end-0 m-3 shadow-sm rounded-circle text-danger" style="width: 32px; height: 32px; padding: 0;">
                        <i class="fas fa-heart"></i>
                    </button>
                    <div style="height: 240px; background-color: #e9ecef; border-top-left-radius: 16px; border-top-right-radius: 16px; overflow: hidden;">
                         <div class="d-flex align-items-center justify-content-center h-100 text-muted">
                            <i class="fas fa-rocket fa-3x"></i>
                         </div>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title fw-bold mb-1"><a href="book-detail.jsp" class="text-decoration-none text-dominant stretched-link">Elon Musk</a></h5>
                        <p class="card-text text-muted small mb-3">Walter Isaacson</p>
                        <button class="btn btn-primary-custom w-100 btn-sm" onclick="mockBorrow('Elon Musk', 'Walter Isaacson'); return false;" style="position: relative; z-index: 2;">Borrow Now</button>
                    </div>
                </div>
            </div>

            <!-- Book Card 2 -->
            <div class="col">
                <div class="card card-custom h-100 position-relative">
                    <button class="btn btn-light position-absolute top-0 end-0 m-3 shadow-sm rounded-circle text-danger" style="width: 32px; height: 32px; padding: 0;">
                        <i class="fas fa-heart"></i>
                    </button>
                    <div style="height: 240px; background-color: #e9ecef; border-top-left-radius: 16px; border-top-right-radius: 16px; overflow: hidden;">
                         <div class="d-flex align-items-center justify-content-center h-100 text-muted">
                            <i class="fas fa-laptop-code fa-3x"></i>
                         </div>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title fw-bold mb-1"><a href="book-detail.jsp" class="text-decoration-none text-dominant stretched-link">System Design Interview</a></h5>
                        <p class="card-text text-muted small mb-3">Alex Xu</p>
                        <button class="btn btn-primary-custom w-100 btn-sm" onclick="mockBorrow('System Design Interview', 'Alex Xu'); return false;" style="position: relative; z-index: 2;">Borrow Now</button>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/app.js"></script>
</body>
</html>